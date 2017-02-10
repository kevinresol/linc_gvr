#pragma once

//hxcpp include should always be first    
#include <hxcpp.h>
#include "../lib/vr/gvr/capi/include/gvr.h"

namespace linc {

    namespace gvr {
        extern gvr_buffer_viewport_list* get_recommended_buffer_viewports(gvr_context* gvr);
        extern gvr_buffer_viewport* buffer_viewport_list_get_item(gvr_context* gvr, gvr_buffer_viewport_list* viewport_list, int index);
        extern gvr_swap_chain* swap_chain_create(gvr_context* gvr, int size);
        
    } //gvr namespace

} //linc