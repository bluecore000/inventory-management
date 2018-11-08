<?php $this->load->view('include/simplehead.php'); ?>
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/select2/dist/css/select2.css">
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<?php $this->load->view('include/header'); ?>
<?php $this->load->view('include/mainsidebar'); ?>
<?php $this->load->view('include/minisection'); ?>

 
  
<section class="content">
  
    <div class="row">
        <div class="col-xs-6">
          <div class="box box-success">
            <div class="box-body">    
              <div class="form-group text-right">
                <a href="<?php echo base_url(); ?>customer/register" class="btn bg-olive btn-xs">
                    <i class="fa fa-user-plus"></i> New Customer 
                </a>
              </div>     
              <div class="form-group">
                <label>Customer Name</label>
                <select class="form-control select2" name="customername" id="customername" style="width: 100%;">
                  <option selected="selected">Select Customer</option>             
                  <?php foreach ($allCustomer as $ans){ ?>
                     <option value="<?= $ans->customer_address; ?>" data-contact="<?= $ans->customer_contact; ?>" data="<?= $ans->customer_id; ?>"><?= $ans->customer_name; ?></option>
                  <?php } ?>
                  
                </select>
              </div>
              <div class="form-group">
                <label>Company Name</label>
                <select class="form-control select2" id="companyname" name="companyName" style="width: 100%;">
                  <option selected="selected">Select Company</option>             
                  <?php foreach ($allCompany as $aco){ ?>
                     <option value="<?= $aco->company_name; ?>" data-id="<?= $aco->company_id; ?>"><?= $aco->company_name; ?></option>
                  <?php } ?>
                  
                </select>
              </div>              
              <div class="form-group">
                <label>Date</label>
                <div class="input-group date">
                  <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                  </div>
                  <input type="text" class="form-control pull-right datepicker" name="customerBillDate">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-6">
          <div class="box box-primary">
            <div class="box-body">              
              <div class="checkbox small m-b-2" id="checkboxGroup">                
                
              </div>
              <div class="form-group text-right">
                <button type="button" onClick="Sales()" class="btn btn-primary btn-sm">Submit</button>
              </div>
            </div>
          </div>
        </div>
    </div>
    

</section>

<?php $this->load->view('sales/sales_modal.php'); ?>






<?php $this->load->view('include/minifooter'); ?>
<?php $this->load->view('include/aside'); ?>
<?php $this->load->view('include/simplefooter.php'); ?>
<script src="<?php echo base_url(''); ?>assets/bower_components/select2/dist/js/select2.full.min.js"></script>
<script src="<?php echo base_url(''); ?>assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- page script -->
<script>
$(function () {
    //Initialize Select2 Elements
    $('.select2').select2();
  });

 $('.datepicker').datepicker({
      autoclose: true
    }).datepicker("setDate",'now');
 

  $('#companyname').change(function(){
    $('#showdatatable').html('');
    var company_id = $(this).children(":selected").attr("data-id");
    var company_name = $(this).children(":selected").val();

    if(!company_id=='') {
      $.ajax({
        type: 'ajax',
        method: 'get',
        url: '<?php echo base_url() ?>sales/getProduct/'+company_id,
        //data: {company_id: company_id},
        async: false,
        dataType: 'json',
        success: function(data){          
            console.log(data);
          
            $("#checkboxGroup").html('');
  
            $.each(data.customers,function(i,v){ 
              
              $("<div class='checkbox-overlay'>"+
                  "<input type='checkbox' name='productOption[]' value='"+v.product_name+"' class='selectvalue' data='"+v.product_id+"' value='"+v.product_name+"'>"+                 
                  "<div class='checkbox-container'>"+
                  "<div class='checkbox-checkmark'></div>"+
                  "</div>"+
                  "<label>"+v.product_name+"</label>"+
                  "</div>"+
                  "<a href='' class='pull-right'>Detils</a>").appendTo("#checkboxGroup");
            })
         
         
          },
       
      });
    }
    else {
      alert('Something Wrong!');
    }

    
  });
  

  function Sales() {
    $('body').find('.data-bill-tbody').html('');
    var company_id    = $("input[name='companyId']").val();
    var company_name  = $("input[name='companyName']").val();
    var customerName  = $("select[name='customername'] option:selected").text();
    var customerAddress = $("select[name='customername'] option:selected").val();
    var customerContact = $("select[name='customername'] option:selected").attr('data-contact');
    var mainDate        = $("input[name='customerBillDate']").val();
    var mainName        = document.getElementById("mainName");
    var mainAddress     = document.getElementById("mainAddress");
    var mainContact     = document.getElementById("mainContact");

    var checkbox = document.getElementsByClassName('selectvalue');
    var item = $('body').find('.selectvalue:checkbox:checked');
    var item_checkbox = $('body').find('.selectvalue:checkbox');

    var checkbox      = document.getElementsByClassName('selectvalue');
    
    var product_list    = '';
    var product_id      = '';
    var i;
    
    var co_id = $("#companyname option:selected").attr('data-id');
    var co_name = $("#companyname option:selected").val();
    var cu_id = $("#customername option:selected").attr('data');
    var cu_name = $("#customername option:selected").text();

    
    if ($(checkbox).is(':checked')) {
      mainName.innerHTML = customerName;
      mainAddress.innerHTML = customerAddress;
      mainContact.innerHTML = customerContact;
      $("#mainDate").html(mainDate);
      for (i=0; i<item.length; i++) {      
          var main1 = $("body").find("select[name='productOption[]'] option:selected")[i]; 
          var sn = i+1;
          product_list += item[i].value + " ";    

         // product_id += item.eq(i).attr('data') + " ";
          item_id = item.eq(i).attr('data');
         
          $("<tr>"+
           "<td>"+sn+"</td>"+ 
           "<td>"+product_list+"</td>"+
           "<td class='text-center'>"+
           "<input type='hidden' class='m-text' name='product_name[]' value='"+product_list+"'>"+
           "<input type='hidden' class='m-text pid' name='product_id[]' value='"+item_id+"'>"+ 
          "<input type='number' class='m-text a unit' name='unit[]' min='0'>"+
          "</td>"+    
          "<td class='text-center'>"+
          "<input type='number' class='m-text b pic' name='pic[]' min='0' id='pic'>"+
          "</td>"+   
          "<td class='text-center'>"+
          "<input type='number' class='m-text c qty' name='qty[]' min='0' id='qty'>"+
          "</td>"+  
          "<td class='text-center'>"+
          "<input type='number' class='m-text d rate' name='rate[]' min='0' id='rate'>"+
          "</td>"+  
          "<td class='text-center'>"+
          "<input type='number' class='m-text e amount' name='amount[]' min='0' id='amount'>"+
          "</td>"+       
          "</tr>"+
          "<tr class='hidden'>"+
            "<td>"+
              "<input type='text' name='co_name' value='"+co_name+"'>"+
              "<input type='text' name='co_id' value='"+co_id+"'>"+
              "<input type='text' name='cu_id' value='"+cu_id+"'>"+
              "<input type='text' name='cu_name' value='"+cu_name+"'>"+
              "<input type='text' name='cu_address' value='"+customerAddress+"'>"+
              "<input type='text' name='cu_contact' value='"+customerContact+"'>"+
              "<input type='text' name='bill_date' value='"+mainDate+"'>"+
            "</td>"+
          "</tr>"    
        ).appendTo(".data-bill-tbody");
           var datetime = new Date();
            document.getElementById("demo").value = datetime;
        var product_list = '';
      
      }
     
     $('#salesBill').modal('show');
      
    }
    else {
       alert('Please, Select Product.');
    }
    
  }

 


 // $(document).ready(function(){
 //     $("body.invoice-transact-table").on('keyup','.unit, .pic, .qty',function(){
 //             var sub_amount=0;
 //            $("input[name='unit[]']").each(function (index) {
 //                  var unit = $("input[name='unit[]']").eq(index).val();
 //                  var pic = $("input[name='pic[]']").eq(index).val();
 //                  var total_qty = parseInt(unit) * parseInt(pic);
               
 //                // sub amount
 //                 $("input[name='qty']").val(total_qty);

               
 //          });
 //  });
 //  });

  function print() {
         

      $('body').find('#submit-form').trigger('click');
             var pathname = window.location.href;
          console.log(pathname);
          
            var divContents = $('#print-container').html();
            var popupWin = window.open('', '_blank', 'width=992,height=600,location=1,status=1,scrollbars=1,left=100px');
               popupWin.document.open();
               popupWin.document.write('<!DOCTYPE html><html><head><meta charset="UTF-8"><title></title><link rel="stylesheet" href="<?= base_url(''); ?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css" media="print"><link rel="stylesheet" href="<?php echo base_url(); ?>assets/custom/print.css" media="print"></head><body onload="window.print()">');
               popupWin.document.write(divContents);
               popupWin.document.write('</body></html>');
               popupWin.document.close();
        

      return false;
         
        }
</script>






<?php $this->load->view('include/htmlclose.php'); ?>
