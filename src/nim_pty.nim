const
    O_RDRW*{.importC,noDecl.} : cint = 0
    O_NOCTTY*{.importC,noDecl.} : cint = 0

proc openPt*(flag : cint): cint {.importC:"posix_openpt".}
proc ptsName*(fd : cint): cstring {.importC:"ptsname".}
proc ptsNameR*(fd : cint, buffer : ptr cstring, bufLen : csize_t) : int{.importC:"ptsname_r".}
proc grantPt*(fd : cint): cint {.importC: "grantpt".}
proc unlockPt*(fd : cint): cint {.importC: "unlockpt".}
proc fork*(toFork : void): cint {.importC: "fork".}
proc dup2*(oldFd, newFd: cint): cint {.importC: "dup2".}
