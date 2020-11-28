using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Services
{
    public class serviceManage
    {
        public List<nhanVien> getAllNhanVien()
        {
            QLCHDoChoiEntities dbNhanVien = new QLCHDoChoiEntities();
            var listNhanVien = dbNhanVien.nhanViens.ToList();
            return listNhanVien;
        }
        public List<khachHang> getAllKhachHang()
        {
            QLCHDoChoiEntities dbKhachHang = new QLCHDoChoiEntities();
            var listKH = dbKhachHang.khachHangs.ToList();
            return listKH;
        }
        public List<doChoi> getAllDC()
        {
            QLCHDoChoiEntities dbDC = new QLCHDoChoiEntities();
            var listDC = dbDC.doChois.ToList();
            return listDC;
        }
        public List<HoaDon> getAllConsumeP()
        {
            QLCHDoChoiEntities dbConsP = new QLCHDoChoiEntities();
            var listConsP = dbConsP.HoaDons.ToList();
            return listConsP;
        }
        public List<taiKhoan> getAllAcc()
        {
            QLCHDoChoiEntities dbAcc = new QLCHDoChoiEntities();
            var listAcc = dbAcc.taiKhoans.ToList();
            return listAcc;

        }

    
    }
}
