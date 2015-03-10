  !
  ! Dimension routines:
  !
  ! -----------
  function nf90_def_dim(ncid, name, len, dimid)
  !DEC$ ATTRIBUTES DLLEXPORT :: nf90_def_dim
    integer,             intent( in) :: ncid
    character (len = *), intent( in) :: name
    integer,             intent( in) :: len
    integer,             intent(out) :: dimid
    integer                          :: nf90_def_dim

    nf90_def_dim = nf_def_dim(ncid, name, len, dimid)
  end function nf90_def_dim
  ! -----------
  function nf90_inq_dimid(ncid, name, dimid)
  !DEC$ ATTRIBUTES DLLEXPORT :: nf90_inq_dimid
    integer,             intent( in) :: ncid
    character (len = *), intent( in) :: name
    integer,             intent(out) :: dimid
    integer                          :: nf90_inq_dimid

    nf90_inq_dimid = nf_inq_dimid(ncid, name, dimid)
  end function nf90_inq_dimid
  ! -----------
  function nf90_rename_dim(ncid, dimid, name)
  !DEC$ ATTRIBUTES DLLEXPORT :: nf90_rename_dim
    integer,             intent( in) :: ncid
    character (len = *), intent( in) :: name
    integer,             intent( in) :: dimid
    integer                          :: nf90_rename_dim

    nf90_rename_dim = nf_rename_dim(ncid, dimid, name)
  end function nf90_rename_dim
  ! -----------
  function nf90_inquire_dimension(ncid, dimid, name, len)
  !DEC$ ATTRIBUTES DLLEXPORT :: nf90_inquire_dimension
    integer,                       intent( in) :: ncid, dimid
    character (len = *), optional, intent(out) :: name
    integer,             optional, intent(out) :: len
    integer                                    :: nf90_inquire_dimension

    character (len = nf90_max_name) :: dimName
    integer                         :: length

    nf90_inquire_dimension = nf_inq_dim(ncid, dimid, dimName, length)
    if(present(name)) name = trim(dimName)
    if(present(len )) len  = length
  end function nf90_inquire_dimension
  ! -----------
