<?php $this->load->view('include/simplehead.php'); ?>

<?php $this->load->view('include/header'); ?>
<?php $this->load->view('include/mainsidebar'); ?>
<?php $this->load->view('include/minisection'); ?>

 
  
<section class="content">
      

	 <div class="row">
        <div class="col-xs-12">
          <div class="box">
           
            <!-- /.box-header -->
            <div class="box-body">
              <h1 id="gg"></h1>
              <table id="example1" class="table table-bordered table-striped data-table">
                <thead>
                  <tr>
                    <td>Sn</td>
                    <td>Customer Name</td>
                    <td>Company Name</td>
                    <td>Action</td>
                    
                  </tr>
                </thead>
                
                <tbody class="tbody_uppercase">
                   <?php $sn=1; ?> 
                 <?php foreach ($records as $rec) { ?>
                    <tr>
                      <td><?= $sn++; ?></td>
                      <td><?= $rec->customer_name; ?></td>
                      <td><?= $rec->company_name; ?></td>
                      <td><div class="btn btn-sm btn-success">Detail</div></td>
                    </tr>
                 
                 <?php } ?>

              </tbody>
                
               
              </table>
            </div>
            
          </div>
        </div>
   </div>

      
</section>






<?php $this->load->view('include/minifooter'); ?>
<?php $this->load->view('include/aside'); ?>
<?php $this->load->view('include/simplefooter.php'); ?>
<!-- page script -->
<script>
   $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })

  })
   

</script>



<?php $this->load->view('include/htmlclose.php'); ?>
