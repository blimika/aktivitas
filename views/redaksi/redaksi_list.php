<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
	<h2>Data Master Redaksi</h2>
	<ol class="breadcrumb">
	<li>
		<a href="<?php echo $url; ?>">Depan</a>
	</li>
	<li class="active">
		<strong>Redaksi</strong>
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
        <div class="col-lg-6">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Data Redaksi Aktivitas</h5>
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
                    <table class="table table-striped table-bordered table-hover dataPegawaiHonor" >
                    <thead>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Redaksi</th>
                        <th>&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                        <?php 
                    $r_red=list_redaksi(0,false);

                    if ($r_red["error"]==false) {
                        $i=1;
                        $max_red=$r_red["red_total"];
                        for ($i=1;$i<=$max_red;$i++) {
                            echo '
                            <tr>
                            <td>'.$i.'</td>
                            
                            <td>'.$r_red["item"][$i]["red_nama"].'</td>
                            
                            <td><a href="'.$url.'/'.$page.'/'.$act.'/edit/'.$r_red["item"][$i]["red_id"].'"><i class="fa fa-pencil-square text-info" aria-hidden="true"></i></a> <a href="'.$url.'/'.$page.'/'.$act.'/delete/'.$r_red["item"][$i]["red_id"].'" data-confirm="Apakah data ('.$r_red["item"][$i]["red_id"].') '.$r_red["item"][$i]["red_nama"].' ini akan di hapus?"><i class="fa fa-trash-o text-danger" aria-hidden="true"></i></a></td>
                            </tr>';

                        }
                    }
                    else {
                        echo '<tr>
                        <td colspan="6">Data masing kosong</td>
                        </tr>';
                    }
                    ?>         
                            
                    </tbody>
                    <tfoot>
                    <tr>
                        <th class="text-center">No</th>
                        <th class="text-center">Redaksi</th>
                        
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
