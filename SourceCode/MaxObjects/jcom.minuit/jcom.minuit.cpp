/* 
 * jcom.minuit
 * External for Jamoma : ...
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.minuit.h"

// Globals
t_class		*node_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.minuit",(method)node_new, (method)node_free, (long)sizeof(t_node), 0L, A_GIMME, 0);

	// add methods
	class_addmethod(c, (method)node_notify,			"notify",		A_CANT, 0);
	class_addmethod(c, (method)node_assist,			"assist",		A_CANT, 0);


	//changement Stan
	// this method posts the children (leaves or nodes) and the properties of the node which address is given
	class_addmethod(c, (method)minuit_namespace,	"?namespace",	A_SYM, 0);
	class_addmethod(c, (method)minuit_get,			"?get",			A_SYM, 0);
	class_addmethod(c, (method)minuit_set,			"?set",			A_GIMME, 0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	node_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *node_new(t_symbol *name, long argc, t_atom *argv)
{
	t_node *x;

	x = (t_node*)object_alloc(node_class);
	x->p_out = outlet_new(x, 0);

	if(x){

		// default : get the root of the tree
		x->p_node = jamoma_node_init();

	}
	return x;
}

void node_free(t_node *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void node_assist(t_node *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		//if(arg == 0)
		//strcpy(dst, "I am outlet 0");
	}		
}

void minuit_namespace(t_node *x, t_symbol *address) {

	short i;
	t_symbol *n_type;
	TTSymbolPtr attr;
	
	t_atom atom;
	char outletstring[1000]={'\0'};
	
	strcat(outletstring,":namespace ");
	strcat(outletstring,address->s_name);
	post(outletstring);
	node_goto(x, address);

	// Il nous faut avoir les noeuds inférieurs et les attributs du noeud à l'addresse données

	TTListPtr lk_prp = jamoma_node_properties(x->p_node);
	TTListPtr lk_chd = jamoma_node_children(x->p_node);
	//t_symbol *inst = jamoma_node_instance(x->p_node);

	// the two lists for the nodes and leaves
	t_linklist *lk_leaves = linklist_new();
	t_linklist *lk_nodes = linklist_new();

	// if there are properties
	if(lk_prp){
		post(" attributes={");
		strcat(outletstring," attributes={");

		// write an outline for each attribut
		attr = NULL;
		for(lk_prp->begin(); lk_prp->end(); lk_prp->next()){
			lk_prp->current().get(0,(TTSymbol**)attr);
			post("%s",attr->getCString()); 
			strcat(outletstring," ");
			strcat(outletstring,attr->getCString());  
		} 
		post("}\n");
		strcat(outletstring," }");
	}

	// if there are children
	if(lk_chd){
		
		//a check if its leaves or nodes
		for(lk_chd->begin(); lk_chd->end(); lk_chd->next()){
			lk_chd->current().get(0,(TTObject **)&x->p_node);
			n_type = jamoma_node_type(x->p_node);
			
			if (strcmp(n_type->s_name,"container")==0 || strcmp(n_type->s_name,"hub")==0)
				linklist_append(lk_nodes, x->p_node);
			else
				linklist_append(lk_leaves, x->p_node);
		}
		
		if(lk_nodes->head) {
			post(" nodes={");
			strcat(outletstring," nodes={");
			for(i=0; i<linklist_getsize(lk_nodes); i++){
				x->p_node = (TTNodePtr)linklist_getindex(lk_nodes,i);
				post(jamoma_node_name(x->p_node)->s_name);
				strcat(outletstring," ");
				strcat(outletstring,jamoma_node_name(x->p_node)->s_name);				
			}
			strcat(outletstring," }");
		}
		if(lk_leaves->head) {
			post(" leaves={");
			strcat(outletstring," leaves={");
			for(i=0; i<linklist_getsize(lk_leaves); i++){
				x->p_node = (TTNodePtr)linklist_getindex(lk_leaves,i);
				post(jamoma_node_name(x->p_node)->s_name);
				strcat(outletstring," ");
				strcat(outletstring,jamoma_node_name(x->p_node)->s_name);
			}
			strcat(outletstring," }");
		}
		post(outletstring);
		outlet_anything(x->p_out, gensym(outletstring), 0, &atom);
	}
	post(outletstring);
	outlet_anything(x->p_out, gensym(outletstring), 0, &atom);
}


void minuit_get(t_node *x, t_symbol *attraddress) {

	unsigned int i=0, j=0;
	char * address = {'\0'}, * attrname = {'\0'};
	char outletstring[255]={'\0'};
	t_atom atom;

	//split address and ':'attribute
	while (attraddress->s_name[i]!=':'&&attraddress->s_name[i]!='\0')
		i++;
	
	//we extract the address name
	address = (char *)malloc(sizeof(char)* (i)); 
	strncpy (address, attraddress->s_name, i);
	address[i]='\0';

		
	//post pour debuggage
	post(":get "); 
	post(address);

	//outletstring
	strcat(outletstring,":get ");
	strcat(outletstring,address);



	//special case of missing attribute, in which the value attribute is requested (minuit protocol)
	if(attraddress->s_name[i]=='\0') {
		attrname = (char *)malloc(sizeof(char)* 6);
		//attrnames[0] = '\0';
		strcpy(attrname, "value");
		attrname[5]='\0';
	}

	//normal case, we extract the attribute names from the given attraddress (we drop the ':/' before the attribute)

	else {
		attrname = (char *)malloc(sizeof(char)*(strlen(attraddress->s_name)-i));
		for(i,j=0; i<(strlen(attraddress->s_name)-1); i++, j++) {
			attrname[j]=attraddress->s_name[i+2];
		}
		attrname[j+1]='\0';
		post(attrname);
	}

	node_goto(x, gensym(address));

	// get value
	t_object *obj = jamoma_node_max_object(x->p_node);

	long value_nb;
	t_atom  * attr_value = NULL;
	
	t_max_err err = object_attr_getvalueof(obj, gensym(attrname), &value_nb, &attr_value);

			
	post(":/");
	post(attrname); 
	post(" ");
	strcat(outletstring,":/");	
	strcat(outletstring,attrname);
	strcat(outletstring," ");

	if(value_nb!=0&&!err) {
		for(i=0;i<value_nb; i++) {/*
			if(atom_gettype (*(&attr_value+ i))== A_SYM){
				t_symbol * atomsymbol = atom_getsym(*(&attr_value+ i));
				post(" ");
				strcat(outletstring," ");
				post(atomsymbol->s_name);
				strcat(outletstring,atomsymbol->s_name);
			} 
			 if(atom_gettype(*(&attr_value+ i))== A_FLOAT){
				float atomfloat = atom_getfloat(*(&attr_value+ i));
				post(" %f", atomfloat);
				snprintf(confloat, 256, " %f", atomfloat);
				post("testtest %s", confloat);
				strcat(outletstring,confloat);

			} 
			if(atom_gettype(*(&attr_value+ i))== A_LONG){
				long atomlong = atom_getlong(*(&attr_value+ i));
				post(" %f", atomlong);
				snprintf(conlong, 256, " %lf", atomlong);
				strcat(outletstring,conlong);
			}*/
		} 
	}

	else
		post("there are no values attached to the requested attribute"); 
	
	
	if(!err)
		outlet_anything(x->p_out, gensym(outletstring), 0, &atom);
 
}

void minuit_set(t_node *x, t_symbol *msg, long argc, t_atom *argv) {

	short i=0, j;
	char * address = {'\0'}, * attrname = {'\0'};
	t_symbol * attraddr = atom_getsym(&argv[0]);
	t_object *obj;
	
	post(msg->s_name);
	post(attraddr->s_name);

	//split address and ':'attribute
	while (attraddr->s_name[i]!=':'&&attraddr->s_name[i]!='\0')
		i++;
	
	//we extract the address name
	address = (char *)malloc(sizeof(char)* (i)); 
	strncpy (address, attraddr->s_name, i);
	address[i]='\0';

	//special case of missing attribute, in which the value attribute is requested (minuit protocol)
	if(attraddr->s_name[i]=='\0') {
		attrname = (char *)malloc(sizeof(char)* 6);
		strcpy(attrname, "value");
		attrname[5]='\0';
	}

	//normal case, we extract the attribute name from the given attraddress (we drop the ':/' before the attribute)
	else {
		attrname = (char *)malloc(sizeof(char)*(strlen(attraddr->s_name)-i));
		for(i,j=0; i<(strlen(attraddr->s_name)-1); i++, j++) {
			attrname[j]=attraddr->s_name[i+2];
		}
		attrname[j+1]='\0';
		//post(attrname);
	}

	node_goto(x, gensym(address));

	// set value
	obj = jamoma_node_max_object(x->p_node);

	object_attr_setvalueof(obj, gensym(attrname), argc-1, &argv[1]);
	
	//post pour debuggage
	post(":set ok");	
} 

void node_goto(t_node *x, t_symbol *address)
{
	JamomaError err = JAMOMA_ERR_NONE;

	// Are we dealing with an OSC message ?
	if(address->s_name[0] == S_SEPARATOR[0]){

		if(address != x->address){
			err = jamoma_node_get(address, &(x->lk_nodes), &(x->p_node));

			// if the address exists
			if(err == JAMOMA_ERR_NONE)
			x->address = address;
		}
	}
}