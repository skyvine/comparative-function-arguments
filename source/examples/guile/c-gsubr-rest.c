#include <libguile.h>

SCM uut(SCM arg0, SCM arg1, SCM arglist) {
	scm_call_3(scm_primitive_eval(scm_string_to_symbol(scm_from_locale_string("format"))),
	           SCM_BOOL_T,
	           scm_from_locale_string("~s~%"),
	           scm_cons_star(arg1, arglist));
	return SCM_EOL;
}

int init(void) {
	scm_c_define_gsubr("uut", 2, 0, 1, uut);
}
