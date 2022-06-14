select concat(id_invoice, '_',id_barang) id_penjualan
from penjualan;

select  concat(id_invoice, '_',id_barang) id_penjualan,
plj.id_invoice,
plj.tanggal,
plj.id_barang,
brg.nama_barang,
plj.harga_barang,
plj.unit,
plj.jumlah_barang,
brg.(jumlah-barang * plj.harga_barang) as total_harga_per_barang,
plj.mata_uang,
brg.kode_brand,
brg.brand,
plj.id_customer,
plg.nama nama_customer,
plg.cabang_sales,
plg.id_distributor,
plg.group as group_category
from penjualan as plj
left join barang as brg
on (plj.id_barang = brg.kode_barang)
left join pelanggan as plg
on (plj.id_customer = plg.id_customer);

select id_invoice, tanggal, id_customner, nama_customer, cabang_sales, id_distributor, group_category, count (distinct id_barang) total_harga, sum (total_barang_pembelian) total pembelian
from penjualan 
group by 1,2,3,4,5,6,7
order by 1;