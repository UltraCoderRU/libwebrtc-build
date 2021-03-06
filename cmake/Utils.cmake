function(patch_file TARGET_FILE SEARCH_REGEX REPLACE_REGEX)
    file(READ ${TARGET_FILE} filedata)
    string(REGEX REPLACE ${SEARCH_REGEX} ${REPLACE_REGEX} filedata "${filedata}")
    file(WRITE ${TARGET_FILE} "${filedata}")
endfunction()

function(prependPath DIRECTORY)
    if (WIN32)
        set(ENV{PATH} "${DIRECTORY};$ENV{PATH}")
    else()
        set(ENV{PATH} "${DIRECTORY}:$ENV{PATH}")
    endif()
endfunction()
