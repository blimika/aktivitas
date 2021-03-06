<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
	<h2>Data Master Users</h2>
	<ol class="breadcrumb">
	<li>
		<a href="index.php">Depan</a>
	</li>
	<li class="active">
		<strong>Users Sistem</strong>
	</li>
	</ol>
	</div>
	<div class="col-lg-2">
         <div class="title-action">
              <a href="<?php echo $url.'/'.$page; ?>/add/" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        </div>
	</div>
</div>
<div class="row wrapper wrapper-content animated fadeInRight">
	 <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Data Users</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                           <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                    <table class="table table-striped table-hover dataPegawaiPNS" >
                    <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Username</th>
                        <th class="text-center">Nama</th>
                        <th class="text-center">Level</th>
                        <th class="text-center">Jabatan</th>
                        <th class="text-center">Unit Kerja</th>
                        <th class="text-center">Status</th>
                        <th class="text-center">Login</th>
                        <th class="text-center">IP</th>
                        <th class="text-center">No HP</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $r_user=list_users(0,false);
                    if ($r_user["error"]==false) {
                        $total_users=$r_user["user_total"];
                        for ($i=1;$i<=$total_users;$i++) {
                            if ($r_user["item"][$i]["tgl_lastlogin"]=='0000-00-00 00:00:00' or $r_user["item"][$i]["tgl_lastlogin"]=='') {
                                $lastlog_user='<span class="label label-danger">Belum pernah login</span>';
                            }
                            else {
                                $lastlog_user=tgl_convert_waktu_pendek(1,$r_user["item"][$i]["tgl_lastlogin"]);
                            }
                              
                            echo '
                                <tr>
                                    <td>'.$r_user["item"][$i]["id"].'</td>
                                    <td>'.$r_user["item"][$i]["username"].'</td>
                                    <td>'.$r_user["item"][$i]["nama"].'</td>
                                    <td>'.$lvl_user_warna[$r_user["item"][$i]["level"]].'</td>
                                    <td>'.$JenisJabatan[$r_user["item"][$i]["peg_jabatan"]].'</td>
                                    <td>'.$r_user["item"][$i]["unit_nama"].'</td>
                                    <td>'.$status_umum_warna[$r_user["item"][$i]["aktif"]].'</td>
                                    <td>'.$lastlog_user.'</td>
                                    <td>'.$r_user["item"][$i]["ip_lastlogin"].'</td>
                                    <td>'.$r_user["item"][$i]["nohp"].'</td>
                                    <td><div class="tooltip-bps"><a href="'.$url.'/'.$page.'/view/'.$r_user["item"][$i]["id"].'" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="top" title="View User '.$r_user["item"][$i]["nama"].'"><i class="fa fa-search" aria-hidden="true"></i></a> <a href="'.$url.'/'.$page.'/edit/'.$r_user["item"][$i]["id"].'" class="btn btn-warning btn-xs" data-toggle="tooltip" data-placement="top" title="Edit User '.$r_user["item"][$i]["nama"].'"><i class="fa fa-pencil-square" aria-hidden="true"></i></a> <a href="'.$url.'/'.$page.'/delete/'.$r_user["item"][$i]["id"].'" data-confirm="Apakah data ('.$r_user["item"][$i]["username"].') '.$r_user["item"][$i]["nama"].' ini akan di hapus?" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="Hapus User '.$r_user["item"][$i]["nama"].'"><i class="fa fa-trash-o" aria-hidden="true"></i></a></div></td>
                                </tr>
                            ';
                        }
                    }
                    else {
                        echo '<tr><td colspan="9">'.$r_user["pesan_error"].'</td></tr>';
                    }
                    ?>        
                    </tbody>
                    <tfoot>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Username</th>
                        <th class="text-center">Nama</th>
                        <th class="text-center">Level</th>
                        <th class="text-center">Jabatan</th>
                        <th class="text-center">Unit Kerja</th>
                        <th class="text-center">Status</th>
                        <th class="text-center">Login</th>
                        <th class="text-center">IP</th>
                        <th class="text-center">No HP</th>
                        <th>&nbsp;</th>
                    </tr>
                    </tfoot>
                    </table>
                        </div>

                    </div>
                </div>
        </div>
     
    </div>
</div>