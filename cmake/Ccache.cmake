
macro(enable_ccache)
    find_program(CCACHE_FOUND ccache)
    if(CCACHE_FOUND)
        set_property(GLOBAL PROPERTY RULE_LAUNCH_COMPILE ccache)
        set_property(GLOBAL PROPERTY RULE_LAUNCH_LINK ccache)
    else(CCACHE_FOUND)
        message("CCache not found")
    endif(CCACHE_FOUND)
endmacro(enable_ccache)
