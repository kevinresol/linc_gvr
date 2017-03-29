#pragma once

//hxcpp include should always be first    
#include <hxcpp.h>
#include "vr/gvr/capi/include/gvr.h"

namespace linc {

    namespace gvr {
        extern gvr_context* create();
        extern gvr_swap_chain* swap_chain_create(gvr_context* gvr, int size);
        extern void set_surface_size(gvr_context* gvr, int width, int height);
        extern void swap_chain_resize_buffer(gvr_swap_chain* swap_chain, int32_t index, int width, int height);
        
    } //gvr namespace

} //linc