! include( ../../common.pri ) {
    error( Couldn't find the common.pri file! )
}

TEMPLATE = lib

CONFIG *= staticlib create_prl link_prl

CONFIG -= qt

TARGET = cppunit

DEFINES *= _LIB

win32 {
	DEFINES *= UNICODE
}

INCLUDEPATH += $$LIB_CPPUNIT_DIR_INC

CONFIG(debug,debug|release) {
	DEFINES *= _DEBUG
} else {
	DEFINES *= NDEBUG
}

#Include file(s)
include(lib_cppunit.pri)
