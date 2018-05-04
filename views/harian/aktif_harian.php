<?php
if (isset($_POST['bln_pilih'])) { $bln_pilih=$_POST['bln_pilih']; }
else { $bln_pilih=date("n"); }

if (isset($_POST['thn_pilih'])) { $thn_pilih=$_POST['thn_pilih']; }
else { $thn_pilih=date("Y"); }
?>
<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
	<h2>Aktivitas Harian Pegawai</h2>
	<ol class="breadcrumb">
	<li>
		<a href="<?php echo $url; ?>">Depan</a>
	</li>
	<li class="active">
		<strong>Aktivitas Harian</strong>
	</li>

	</ol>
	</div>
	<div class="col-lg-2">
        <div class="title-action">
            <a href="<?php echo $url; ?>/add/" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        </div>
	</div>
</div>
<div class="row wrapper wrapper-content animated fadeInRightBig">
    <div class="row">
          <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Aktivitas Harian Pegawai</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        
                        <form class="form-inline" method="post">
                          <div class="form-group">
                            <label for="sdate">Pilih</label>
                            <select name="bln_pilih" class="form-control">
                                <option value="">Bulan</option>
                                <?php 
                                
                                for ($i=1;$i<=12;$i++) {
                                    if ($i==$bln_pilih) { $pilih_bln='selected="selected"'; }
                                    else { $pilih_bln=''; }
                                    echo '<option value="'.$i.'" '.$pilih_bln.'>'.$nama_bulan_panjang[$i].'</option>';
                                }
                                ?>
                            </select>
                             <select name="thn_pilih" class="form-control">
                                <option value="">Tahun</option>
                                <?php
                                $thn_skrg=date("Y");
                                for ($j=($thn_skrg-2);$j<=$thn_skrg;$j++) {
                                    if ($j==$thn_pilih) { $pilih_thn='selected="selected"'; }
                                    else { $pilih_thn=''; }
                                    echo '<option value="'.$j.'" '.$pilih_thn.'>'.$j.'</option>';

                                }
                                ?>
                            </select>
                          </div>
                          <button type="submit" name="view_harian" class="btn btn-primary">View Data</button>
                        </form>
                   
                        <div class="table-responsive">
                            <table class="table table-striped table-hover" >
                            <thead>
                            <tr>
                                <th width="15%">Waktu</th>
                                <th>Kegiatan</th>
                                <th>Target</th>
                                <th>Tanggal Add</th>
                                <th>Tanggal Update</th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            $tgl_awalku = strtotime($thn_pilih.'-'.$bln_pilih.'-1');
                            $tgl_akhir = date("Y-m-t",$tgl_awalku);
                            $tgl_awal = date("Y-m-d",$tgl_awalku);
                            $tgl_n=date("d",strtotime($tgl_akhir));
                            $user_id=$_SESSION["papo_userid"];
                            //for ($j = 0; $j < $tgl_n; $j++) {
                            for ($j = ($tgl_n-1); $j >= 0; $j--) { //urutan tanggal dari 1 - 31
                                    //$timestamp = time();
                                    $timestamp = strtotime($tgl_akhir);
                                    $tm = 86400 * $j; // 60 * 60 * 24 = 86400 = 1 day in seconds
                                    $tm = $timestamp - $tm;
                                    $tgl_dipilih=date("Y-m-d", $tm);
                                    echo  '<tr><td colspan="6"><strong>'.tgl_convert(1,$tgl_dipilih).'</strong></td></tr>';
                                    
                            //cek tgl hari dulu
                                    if (cek_hari_kerja($tgl_dipilih)==true) {
                                         echo '<tr>
                                                <td colspan="6"><span class="label label-primary">Hari Libur</span></td>
                                                </tr>';
                                    }
                                    else {
                                        //cek lagi apakah hari besar apa tidak
                                        $r_libur=cek_hari_libur($tgl_dipilih);
                                        if ($r_libur["error"]==false) {
                                            echo '<tr>
                                                <td colspan="6"><span class="label label-success">'.$r_libur["libur_ket"].'</span></td>
                                                </tr>';
                                        }
                                        else {
                                            $r_list=list_aktivitas_harian(0,$tgl_dipilih,false,$user_id);
                                            if ($r_list["error"]==false) {
                                                $max_data=$r_list["aktif_total"];
                                                for ($i=1;$i<=$max_data;$i++) {
                                                    echo '
                                                        <tr>
                                                            <td>'.date("H:i",strtotime($r_list["item"][$i]["jam_start"])).' - '.date("H:i",strtotime($r_list["item"][$i]["jam_end"])).'</td>
                                                            <td>'.$r_list["item"][$i]["redaksi"].'</td>
                                                            <td>'.$r_list["item"][$i]["target"].' '.$r_list["item"][$i]["satuan"].'</td>
                                                            <td>'.tgl_convert_waktu_pendek(1,$r_list["item"][$i]["tgl_add"]).'</td>
                                                            <td>'.tgl_convert_waktu_pendek(1,$r_list["item"][$i]["tgl_update"]).'</td>
                                                            <td><a href="'.$url.'/edit/'.$r_list["item"][$i]["id"].'"><i class="fa fa-pencil-square text-info" aria-hidden="true"></i></a> <a href="'.$url.'/'.$page.'/delete/'.$r_list["item"][$i]["id"].'" data-confirm="Apakah data ('.$r_list["item"][$i]["id"].') '.$r_list["item"][$i]["redaksi"].' ini akan di hapus?"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a></td>
                                                        </tr>
                                                    ';
                                                }
                                            }
                                            else {
                                                echo '<tr>
                                                <td colspan="6"><span class="label label-danger">'.$r_list["pesan_error"].'</span></td>
                                                </tr>';
                                                }
                                        }
                                    }
                            }
                            ?>   
                            </tbody>
                            </table>
                        </div>

                       

                    </div>
                </div>
        </div>
        
    </div>
</div>