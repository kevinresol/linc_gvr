package gvr.c;

import cpp.*;

@:include('linc_gvr.h')
@:native("gvr_context")
extern private class GvrContext {}
typedef Context = Pointer<GvrContext>;
typedef ContextAddress = Pointer<Pointer<GvrContext>>;