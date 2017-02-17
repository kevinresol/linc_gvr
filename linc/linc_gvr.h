#pragma once

//hxcpp include should always be first    
#include <hxcpp.h>
#include "vr/gvr/capi/include/gvr.h"

namespace linc {

    namespace gvr {
        extern gvr_swap_chain* swap_chain_create(gvr_context* gvr, int size);
        
    } //gvr namespace

} //linc