; Require at least NSIS 3.0
!searchparse /noerrors "${NSIS_VERSION}" v _RLNSIS_TEMP b _RLNSIS_TEMP
!searchparse /noerrors "${_RLNSIS_TEMP}" "" _RLNSIS_TEMP - _RLNSIS_TEMP
!searchparse /noerrors "${_RLNSIS_TEMP}" "" _RLNSIS_TEMP . _RLNSIS_TEMP
!if "${_RLNSIS_TEMP}" < 3
	!searchparse /noerrors "${NSIS_VERSION}" v _RLNSIS_TEMP b _RLNSIS_TEMP
	!searchparse /noerrors "${_RLNSIS_TEMP}" "" _RLNSIS_TEMP - _RLNSIS_TEMP
	!error "ERROR: You only have NSIS ${_RLNSIS_TEMP}! NSIS 3.0 or later is required. Please upgrade your NSIS package to atleast version 3.0."
!endif
!undef _RLNSIS_TEMP
