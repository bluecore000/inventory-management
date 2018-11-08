<!-- used -->
<div class="modal fade" id="salesBill">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" id="print-container">
      <form action="<?php echo base_url(); ?>sales/salesBill" method="post">
        <div class="modal-header no-print">
          <button type="button" class="close distroy-data" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title">Transaction Receipt Bills</h4>
        </div>
        <div class="box-body">
          <div style="margin-bottom: 15px;"><img src="<?= base_url(''); ?>assets/custom/logo.png" alt="" class=""></div>
          <div class="col-md-6 heading-left">            

            <div><p>Name :</p><span id="mainName"></span></div>    
            <div><p>Address :</p><span id="mainAddress"></span></div>    
            <div><p>Contact :</p><span id="mainContact"></span></div>
          </div>
          <div class="col-md-6 heading-right">
            <div><p>Date:</p><span id="mainDate"></span></div>
            <div class="hidden"><p>Date:</p><input type="text" value="" id="demo" name="time"></div>
            <div><p>Vat No.</p><span>1213223</span></div>
            
            <div><p>Invoice No.</p><span>021545</span></div>
            <div><p>Invoice Date:</p><span>14,june-2018</span></div>
            <p></p>
            
          </div>
     
       
          <div class="col-md-12">
            <table class=" invoice-transact-table" style="width:100%;">
              <thead>
                <tr>
                  <th style="width: 10%;">S.N</th>
                  <th style="width: 30%;">Product</th>
                  <th style="width: 12%; text-align:center;">Unit</th>
                  <th style="width: 12%; text-align:center;">Pic</th>
                  <th style="width: 12%; text-align:center;">Qty</th>
                  <th style="width: 12%; text-align:center;">Rate</th>
                  <th style="width: 12%; text-align:center;">Amount</th>
                </tr>
              </thead>
              <tbody class="data-bill-tbody">
               
              </tbody>
            </table>
          </div>
       
          <div class="col-md-7"></div>
          <div class="col-md-5 text-right f-right">
            <table class="table invoice-footer-table">
              <tbody>
                <tr>
                  <td style="width:45%">Subtotal:</td>
                  <td><input type="number" min="0" class="b-less-input" name="sub_total"  id='sub_total'></td>
                </tr>              
                <tr>
                  <td>Discount (%):</td>
                  <td><input type="number" min="0" class="" name="discount"  id='discount'></td>
                </tr>
                <tr>
                  <td>Paid Amount</td>
                  <td><input type="number" min="0" class="b-less-input" name="paid_amount"  id='paid_amount'></td>
                </tr>
                <tr>
                  <td>UnPaid Amount</td>
                  <td><input type="number" min="0" class="b-less-input" name="unpaid_amount" id='unpaid_amount'></td>
                </tr>
                <tr>
                  <td>Grand Total</td>
                  <td><input type="number" min="0" class="b-less-input" name="grand_total"  id='grand_total'></td>
                </tr>
                <tr>
                  <td>Balance</td>
                  <td><input type="number" min="0" class="b-less-input" name="balanced"  id='balanced'></td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="modal-footer b-c-l no-print">        
          <button type="button" class="btn btn-primary" onclick="return print()">Save & Print</button>
          <button type="submit" class="btn btn-primary" id="submit-form">Save</button>
          <button type="button" class="btn btn-danger  distroy-data" data-dismiss="modal">Cancel</button>
        </div>
      </form>
      
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
</div>
<script>
  $(".keyup").keyup(function(){
    $("span").text(i += 1);
});
</script>


