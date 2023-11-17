public with sharing class Order_SOQLFactory {


        Public static List<OrderItem> returnQueryOrderItems(Set<String> Set_ItemId,List<Id> OrderId, Set<String> Set_ItemGroupBlock,  String Type){
    
            String Querystr;
            
                Querystr= 'Select id,'
                +' AccountSubsidiary__c,'
                +' CustomerReference__c,'
             +' ComponentListPrice__c,'
             +'  DeliveryType__c,'
             +' discount__c,'
             +' DigitalActivationEMail__c,'
             +' DiscountedPrice__c,' 
             +' DiscountedPriceItemGroup__c,'
             +' EndDate,'
             +'  ItemGroup__c,'     
             +' IsInspectionCopyOrderPossible__c,'
             +' IsRegularOrderPossible__c,'
             +' IsUseCopyOrderPossible__c,'
             +' ImportItemGroupEAN__c,' 		    
             +' ListPriceDiscountRate__c,'        
             +' LineItemTotal__c,'
             +' ListPriceItemGroup__c,'
             +' ListPriceDiscount__c,'
             +'  ListPrice,'
             +'  List_Price_Rate__c,' 
             +' MultiShiptoInventoryRollingCount__c,'
             +' MultiShipAddressRollingCount__c,'       
             +' ManualDiscountValue__c,'
             +' ManualDiscount__c,'
             +' ManualDiscountPercent__c,'
             +' NetSuiteIdShiptoAccount__c,'
             +' NetSuiteIdBilltoAccount__c,'
             +' NetsuiteInternalId__c,'          
             +' NetSalesPriceItemGroup__c,'
             +' NetsuiteListPrice__c,'
             +'  NetsuiteQuantity__c,'
             +' OrderMultipleShippingLocations__c,'
             +' orderImportNumber__c,'
             +' OrderId,'
             +' OrderLineType__c,'
             +' ProductType__c,'
             +'  Product2Id,'
             +'  ProductLicenseDuration__c, '
             +' PricebookEntryId,'
             +' ProductEAN__c,'
             +' ProductComponent__c,'
             +'  Quantity,'
             +' Renewable__c,'
             +' StartDate__c,'
             +' ServiceDate,'
             +' ShipToAccount__c,'
             +' ShippingCity__c,'
             +' ShippingCountry__c,'
             +' ShippingPostalCode__c,'
             +' ShippingState__c,'
             +' ShippingStreet__c,'
             +' ShippingIndicationRule__c,' 
             +' TrialStartDate__c,'
             +' TrialEndDate__c,'  
             +' TotalDiscountAmount__c,'
             +' UnitPrice,'
             +' VATCalculated__c,' 
             +' ItemGroup__r.ProductEAN__c,'
             +' Order.ShippingCostExempt__c,'
             +' Order.Billto__r.CustomerDiscountGroup__c,'
             +' Order.Billto__r.OperatingCompany__c,'
             +' Order.ShippingIndicationRule__c,'
             +' Order.ShippingCostMethodNS__c,'        
             +' Order.MultipleShippingLocations__c,' 
             +' Order.DigitalActivationEMail__c,'
             +' Order.PricingMethod__c,'
             +' Order.Pricebook2.Name,'
             +' Order.CurrencyIsoCode,'
             +' Order.Source__c,'
             +' Order.ShipbyDate__c,'
             +' Product2.ProductRateGroup__c,'  
             +' Product2.FixedStartDate__c,'
             +' Product2.FreeFromDate__c,'         
             +' Product2.MarketSegment__c,'
             +' Product2.LicenseDuration__c,'
             +' Product2.Name,'
             +' Product2.IsSuccessorItemActive__c,'
             +' Product2.SuccessorItem__c,'
             +' Product2.Stocknumber__c,'
             +' Product2.StockLevel__c,' 
             +' Product2.PlannedPrintDate__c,'
             +' Product2.OrderLineType__c,'
             +' Product2.ProductDiscountGroup__c,'
             +' ProductComponent__r.Quantity__c,'
             +' ShipToAccount__r.NumberOfStudents__c,'
             +' VATRule__c,'		
             +' VATRule__r.Rate__c'
             +'  from OrderItem where ';
             
             if(OrderId != null){
                 querystr += 'OrderId in: OrderId';
             }
             else if(Set_ItemGroupBlock != null){
                querystr += 'id in: Set_ItemId AND Product2Id not in: Set_ItemGroupBlock';
             }
             else{
                querystr += 'Id in: Set_ItemId';
             }
    
             if(Type == 'AssetsCreateOnOrderActivation'){
                querystr += ' limit 200 ';
             }
    
             else if(Type == 'ProductSelectController'){
                querystr += ' Order By createddate ASC';
             }
             
    
             OrderItem[] lst_OrdItem =  Database.query(querystr);
    
             
    
    
             
            
            //    Order_OrdeItemFromOrderFlow (DONE)
                    //from OrderItem where OrderId in:req[0].OrderId (DONE)
             //Order_OrderandOrdeItemHandler (NB) (DONE)
                    //From OrderItem where OrderId in:recordIdStrings (DONE)
             //Order_UpdateOrderListPriceDiscountAll (DONE)
                    //From OrderItem where OrderId in:lstOrderId (DONE)
            //Order_UpdateShippingCostsFromItems (DONE)
                    //OrderItem where id in:Set_ItemId (DONE)
            //Order_UpdateVatOnItems (DONE)
                    //where id in:Set_ItemId (DONE)
    
            //Order_AssetsCreateOnOrderActivation (DONE)
                //From OrderItem where Id in:ItemId limit 200 (DONE)
            // Order_ProductSelectController  (DONE)
                //From OrderItem where OrderId =:curOrderId Order By createddate ASC (DONE)
        //Order_ImportOrderItemGroupUpdate (DONE)
                //from OrderItem where OrderId in: Set_OrderId (DONE)
                //from OrderItem where id in: Set_ItemId AND Product2Id not in: Set_ItemGroupBlock (DONE)
             return lst_OrdItem;
       }    
    
    
}