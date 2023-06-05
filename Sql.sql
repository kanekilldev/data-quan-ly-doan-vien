/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2000                    */
/* Created on:     14/03/2023 7:46:45 PM                        */
/*==============================================================*/


if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BCH') and o.name = 'FK_BCH_CO12_CHUCVU')
alter table BCH
   drop constraint FK_BCH_CO12_CHUCVU
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BCH') and o.name = 'FK_BCH_CO13_THONGTIN')
alter table BCH
   drop constraint FK_BCH_CO13_THONGTIN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHIDOAN') and o.name = 'FK_CHIDOAN_CO8_KHOA')
alter table CHIDOAN
   drop constraint FK_CHIDOAN_CO8_KHOA
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CTCDCM') and o.name = 'FK_CTCDCM_CO14_TRDCHUYE')
alter table CTCDCM
   drop constraint FK_CTCDCM_CO14_TRDCHUYE
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CTCDCM') and o.name = 'FK_CTCDCM_CO15_THONGTIN')
alter table CTCDCM
   drop constraint FK_CTCDCM_CO15_THONGTIN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DOANPHI') and o.name = 'FK_DOANPHI_CO10_THONGTIN')
alter table DOANPHI
   drop constraint FK_DOANPHI_CO10_THONGTIN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DOANPHI') and o.name = 'FK_DOANPHI_CO11_NAMHOC')
alter table DOANPHI
   drop constraint FK_DOANPHI_CO11_NAMHOC
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SODOAN') and o.name = 'FK_SODOAN_CO2_THONGTIN')
alter table SODOAN
   drop constraint FK_SODOAN_CO2_THONGTIN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TAIKHOAN') and o.name = 'FK_TAIKHOAN_VO_THONGTIN')
alter table TAIKHOAN
   drop constraint FK_TAIKHOAN_VO_THONGTIN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_ASSOCIATI_CHIDOAN')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_ASSOCIATI_CHIDOAN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_CO1_DANTOC')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_CO1_DANTOC
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_CO3_TONGIAO')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_CO3_TONGIAO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_CO4_TRDVANHO')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_CO4_TRDVANHO
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_CO5_CCANHVAN')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_CO5_CCANHVAN
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_CO6_CCTINHOC')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_CO6_CCTINHOC
go

if exists (select 1
   from dbo.sysreferences r join dbo.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONGTINCHUNG') and o.name = 'FK_THONGTIN_CO7_TINH')
alter table THONGTINCHUNG
   drop constraint FK_THONGTIN_CO7_TINH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BCH')
            and   name  = 'CO13_FK'
            and   indid > 0
            and   indid < 255)
   drop index BCH.CO13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BCH')
            and   name  = 'CO12_FK'
            and   indid > 0
            and   indid < 255)
   drop index BCH.CO12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BCH')
            and   type = 'U')
   drop table BCH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CCANHVAN')
            and   type = 'U')
   drop table CCANHVAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CCTINHOC')
            and   type = 'U')
   drop table CCTINHOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHIDOAN')
            and   name  = 'CO8_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHIDOAN.CO8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHIDOAN')
            and   type = 'U')
   drop table CHIDOAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUCVU')
            and   type = 'U')
   drop table CHUCVU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CTCDCM')
            and   name  = 'CO15_FK'
            and   indid > 0
            and   indid < 255)
   drop index CTCDCM.CO15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CTCDCM')
            and   name  = 'CO14_FK'
            and   indid > 0
            and   indid < 255)
   drop index CTCDCM.CO14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CTCDCM')
            and   type = 'U')
   drop table CTCDCM
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DANTOC')
            and   type = 'U')
   drop table DANTOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DOANPHI')
            and   name  = 'CO10_FK'
            and   indid > 0
            and   indid < 255)
   drop index DOANPHI.CO10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DOANPHI')
            and   name  = 'CO11_FK'
            and   indid > 0
            and   indid < 255)
   drop index DOANPHI.CO11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DOANPHI')
            and   type = 'U')
   drop table DOANPHI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('KHOA')
            and   type = 'U')
   drop table KHOA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NAMHOC')
            and   type = 'U')
   drop table NAMHOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SODOAN')
            and   name  = 'CO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index SODOAN.CO2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SODOAN')
            and   type = 'U')
   drop table SODOAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TAIKHOAN')
            and   name  = 'VO_FK'
            and   indid > 0
            and   indid < 255)
   drop index TAIKHOAN.VO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TAIKHOAN')
            and   type = 'U')
   drop table TAIKHOAN
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'ASSOCIATION_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.ASSOCIATION_18_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'CO6_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.CO6_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'CO5_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.CO5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'CO4_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.CO4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'CO3_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.CO3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'CO7_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.CO7_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONGTINCHUNG')
            and   name  = 'CO1_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONGTINCHUNG.CO1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THONGTINCHUNG')
            and   type = 'U')
   drop table THONGTINCHUNG
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TINH')
            and   type = 'U')
   drop table TINH
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TONGIAO')
            and   type = 'U')
   drop table TONGIAO
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRDCHUYENMON')
            and   type = 'U')
   drop table TRDCHUYENMON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TRDVANHOA')
            and   type = 'U')
   drop table TRDVANHOA
go

/*==============================================================*/
/* Table: BCH                                                   */
/*==============================================================*/
create table BCH (
   MABCH                nvarchar(20)         not null,
   MACHUCVU             nvarchar(20)         not null,
   MADV                 nvarchar(20)         not null,
   TUNGAY               datetime             null,
   NGUOIKY              nvarchar(200)        null,
   constraint PK_BCH primary key nonclustered (MABCH)
)
go

/*==============================================================*/
/* Index: CO12_FK                                               */
/*==============================================================*/
create index CO12_FK on BCH (
MACHUCVU ASC
)
go

/*==============================================================*/
/* Index: CO13_FK                                               */
/*==============================================================*/
create index CO13_FK on BCH (
MADV ASC
)
go

/*==============================================================*/
/* Table: CCANHVAN                                              */
/*==============================================================*/
create table CCANHVAN (
   MACCANHVAN           nvarchar(100)        not null,
   TENCCANHVAN          nvarchar(200)        null,
   constraint PK_CCANHVAN primary key nonclustered (MACCANHVAN)
)
go

/*==============================================================*/
/* Table: CCTINHOC                                              */
/*==============================================================*/
create table CCTINHOC (
   MACCTINHOC           nvarchar(100)        not null,
   TENCCTINHOC          nvarchar(200)        null,
   constraint PK_CCTINHOC primary key nonclustered (MACCTINHOC)
)
go

/*==============================================================*/
/* Table: CHIDOAN                                               */
/*==============================================================*/
create table CHIDOAN (
   MACHIDOAN            nvarchar(20)         not null,
   MAKHOA               nvarchar(20)         not null,
   TENCHIDOAN           nvarchar(200)        null,
   constraint PK_CHIDOAN primary key nonclustered (MACHIDOAN)
)
go

/*==============================================================*/
/* Index: CO8_FK                                                */
/*==============================================================*/
create index CO8_FK on CHIDOAN (
MAKHOA ASC
)
go

/*==============================================================*/
/* Table: CHUCVU                                                */
/*==============================================================*/
create table CHUCVU (
   MACHUCVU             nvarchar(20)         not null,
   TENCHUCVU            nvarchar(100)        null,
   constraint PK_CHUCVU primary key nonclustered (MACHUCVU)
)
go

/*==============================================================*/
/* Table: CTCDCM                                                */
/*==============================================================*/
create table CTCDCM (
   MACTTDCM             nvarchar(20)         not null,
   MATRDCHUYENMON       nvarchar(50)         not null,
   MADV                 nvarchar(20)         not null,
   NGAYCAP              datetime             null,
   DONVICAP             nvarchar(1000)       null,
   constraint PK_CTCDCM primary key nonclustered (MACTTDCM)
)
go

/*==============================================================*/
/* Index: CO14_FK                                               */
/*==============================================================*/
create index CO14_FK on CTCDCM (
MATRDCHUYENMON ASC
)
go

/*==============================================================*/
/* Index: CO15_FK                                               */
/*==============================================================*/
create index CO15_FK on CTCDCM (
MADV ASC
)
go

/*==============================================================*/
/* Table: DANTOC                                                */
/*==============================================================*/
create table DANTOC (
   MADANTOC             nvarchar(200)        not null,
   TENDANTOC            nvarchar(100)        null,
   constraint PK_DANTOC primary key nonclustered (MADANTOC)
)
go

/*==============================================================*/
/* Table: DOANPHI                                               */
/*==============================================================*/
create table DOANPHI (
   MADP                 nvarchar(20)         not null,
   MADV                 nvarchar(20)         not null,
   MANAMHOC             nvarchar(20)         not null,
   TENDP                nvarchar(1000)       null,
   GIATIEN              float                null,
   SOTHANG              int                  null,
   TONGTIEN             float                null,
   constraint PK_DOANPHI primary key nonclustered (MADP)
)
go

/*==============================================================*/
/* Index: CO11_FK                                               */
/*==============================================================*/
create index CO11_FK on DOANPHI (
MANAMHOC ASC
)
go

/*==============================================================*/
/* Index: CO10_FK                                               */
/*==============================================================*/
create index CO10_FK on DOANPHI (
MADV ASC
)
go

/*==============================================================*/
/* Table: KHOA                                                  */
/*==============================================================*/
create table KHOA (
   MAKHOA               nvarchar(20)         not null,
   TENKHOA              nvarchar(500)        null,
   constraint PK_KHOA primary key nonclustered (MAKHOA)
)
go

/*==============================================================*/
/* Table: NAMHOC                                                */
/*==============================================================*/
create table NAMHOC (
   MANAMHOC             nvarchar(20)         not null,
   TENNAMHOC            nvarchar(20)         null,
   constraint PK_NAMHOC primary key nonclustered (MANAMHOC)
)
go

/*==============================================================*/
/* Table: SODOAN                                                */
/*==============================================================*/
create table SODOAN (
   MASODOAN             nvarchar(20)         not null,
   MADV                 nvarchar(20)         not null,
   NGAYNHAN             datetime             null,
   NGAYCHUYEN           datetime             null,
   GHICHU               nvarchar(1000)       null,
   constraint PK_SODOAN primary key nonclustered (MASODOAN)
)
go

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on SODOAN (
MADV ASC
)
go

/*==============================================================*/
/* Table: TAIKHOAN                                              */
/*==============================================================*/
create table TAIKHOAN (
   ID                   int                  not null,
   MADV                 nvarchar(20)         not null,
   TAIKHOAN             nvarchar(500)        null,
   MATKHAU              nvarchar(100)        null,
   constraint PK_TAIKHOAN primary key nonclustered (ID)
)
go

/*==============================================================*/
/* Index: VO_FK                                                 */
/*==============================================================*/
create index VO_FK on TAIKHOAN (
MADV ASC
)
go

/*==============================================================*/
/* Table: THONGTINCHUNG                                         */
/*==============================================================*/
create table THONGTINCHUNG (
   MADV                 nvarchar(20)         not null,
   MATINH               nvarchar(50)         not null,
   MACCANHVAN           nvarchar(100)        not null,
   MATONGIAO            nvarchar(200)        not null,
   MATRDOVH             nvarchar(20)         not null,
   MADANTOC             nvarchar(200)        not null,
   MACHIDOAN            nvarchar(20)         not null,
   MACCTINHOC           nvarchar(100)        not null,
   HOTENDV              nvarchar(500)        null,
   GIOITINH             nvarchar(20)         null,
   NGAYSINH             datetime             null,
   CCCD                 int                  null,
   DANGVIEN             nvarchar(20)         null,
   NGAYVAODOAN          datetime             null,
   SODIENTHOAI          numeric(10)          null,
   EMAIL                nvarchar(500)        null,
   NGHENGHIEP           nvarchar(100)        null,
   constraint PK_THONGTINCHUNG primary key nonclustered (MADV)
)
go

/*==============================================================*/
/* Index: CO1_FK                                                */
/*==============================================================*/
create index CO1_FK on THONGTINCHUNG (
MADANTOC ASC
)
go

/*==============================================================*/
/* Index: CO7_FK                                                */
/*==============================================================*/
create index CO7_FK on THONGTINCHUNG (
MATINH ASC
)
go

/*==============================================================*/
/* Index: CO3_FK                                                */
/*==============================================================*/
create index CO3_FK on THONGTINCHUNG (
MATONGIAO ASC
)
go

/*==============================================================*/
/* Index: CO4_FK                                                */
/*==============================================================*/
create index CO4_FK on THONGTINCHUNG (
MATRDOVH ASC
)
go

/*==============================================================*/
/* Index: CO5_FK                                                */
/*==============================================================*/
create index CO5_FK on THONGTINCHUNG (
MACCANHVAN ASC
)
go

/*==============================================================*/
/* Index: CO6_FK                                                */
/*==============================================================*/
create index CO6_FK on THONGTINCHUNG (
MACCTINHOC ASC
)
go

/*==============================================================*/
/* Index: ASSOCIATION_18_FK                                     */
/*==============================================================*/
create index ASSOCIATION_18_FK on THONGTINCHUNG (
MACHIDOAN ASC
)
go

/*==============================================================*/
/* Table: TINH                                                  */
/*==============================================================*/
create table TINH (
   MATINH               nvarchar(50)         not null,
   TENTINH              nvarchar(100)        null,
   constraint PK_TINH primary key nonclustered (MATINH)
)
go

/*==============================================================*/
/* Table: TONGIAO                                               */
/*==============================================================*/
create table TONGIAO (
   MATONGIAO            nvarchar(200)        not null,
   TENTONGIAO           nvarchar(100)        null,
   constraint PK_TONGIAO primary key nonclustered (MATONGIAO)
)
go

/*==============================================================*/
/* Table: TRDCHUYENMON                                          */
/*==============================================================*/
create table TRDCHUYENMON (
   MATRDCHUYENMON       nvarchar(50)         not null,
   TENTRDCHUYENMON      nvarchar(200)        null,
   constraint PK_TRDCHUYENMON primary key nonclustered (MATRDCHUYENMON)
)
go

/*==============================================================*/
/* Table: TRDVANHOA                                             */
/*==============================================================*/
create table TRDVANHOA (
   MATRDOVH             nvarchar(20)         not null,
   TENTRDOVH            nvarchar(100)        null,
   constraint PK_TRDVANHOA primary key nonclustered (MATRDOVH)
)
go

alter table BCH
   add constraint FK_BCH_CO12_CHUCVU foreign key (MACHUCVU)
      references CHUCVU (MACHUCVU)
go

alter table BCH
   add constraint FK_BCH_CO13_THONGTIN foreign key (MADV)
      references THONGTINCHUNG (MADV)
go

alter table CHIDOAN
   add constraint FK_CHIDOAN_CO8_KHOA foreign key (MAKHOA)
      references KHOA (MAKHOA)
go

alter table CTCDCM
   add constraint FK_CTCDCM_CO14_TRDCHUYE foreign key (MATRDCHUYENMON)
      references TRDCHUYENMON (MATRDCHUYENMON)
go

alter table CTCDCM
   add constraint FK_CTCDCM_CO15_THONGTIN foreign key (MADV)
      references THONGTINCHUNG (MADV)
go

alter table DOANPHI
   add constraint FK_DOANPHI_CO10_THONGTIN foreign key (MADV)
      references THONGTINCHUNG (MADV)
go

alter table DOANPHI
   add constraint FK_DOANPHI_CO11_NAMHOC foreign key (MANAMHOC)
      references NAMHOC (MANAMHOC)
go

alter table SODOAN
   add constraint FK_SODOAN_CO2_THONGTIN foreign key (MADV)
      references THONGTINCHUNG (MADV)
go

alter table TAIKHOAN
   add constraint FK_TAIKHOAN_VO_THONGTIN foreign key (MADV)
      references THONGTINCHUNG (MADV)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_ASSOCIATI_CHIDOAN foreign key (MACHIDOAN)
      references CHIDOAN (MACHIDOAN)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_CO1_DANTOC foreign key (MADANTOC)
      references DANTOC (MADANTOC)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_CO3_TONGIAO foreign key (MATONGIAO)
      references TONGIAO (MATONGIAO)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_CO4_TRDVANHO foreign key (MATRDOVH)
      references TRDVANHOA (MATRDOVH)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_CO5_CCANHVAN foreign key (MACCANHVAN)
      references CCANHVAN (MACCANHVAN)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_CO6_CCTINHOC foreign key (MACCTINHOC)
      references CCTINHOC (MACCTINHOC)
go

alter table THONGTINCHUNG
   add constraint FK_THONGTIN_CO7_TINH foreign key (MATINH)
      references TINH (MATINH)
go

