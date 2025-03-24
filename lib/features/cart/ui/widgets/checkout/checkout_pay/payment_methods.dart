import 'package:dentalink/core/helpers/spacing.dart';
import 'package:dentalink/core/theming/colors.dart';
import 'package:dentalink/core/theming/styles.dart';
import 'package:dentalink/core/widgets/custom_divider.dart';
import 'package:dentalink/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({
    super.key,
  });

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  String selectedPaymentMethod = 'credit_card';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: ColorsManager.moreLightGray)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Radio(
                  activeColor: Colors.black,
                  value: 'credit_card', 
                  groupValue: selectedPaymentMethod, 
                  onChanged: (value){
                    setState(() {
                      selectedPaymentMethod = value!;
                    });
                  }
                ),
                horizontalSpace(6),
                Text(
                  'Credit card',
                  style: CustomTextStyles.font14BlackRegular(context),
                )
              ],
            ),
            if (selectedPaymentMethod == 'credit_card')
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 16),
              child: Text(
                'When you click on the "Pay" button, you will be directed to the bank’s website to complete the steps by entering the card information for the payment process.',
                style: CustomTextStyles.font12LightGrayRegular(context),
              ),
            ),
            const CustomDivider(),
            Row(
              children: [
                Radio(
                  activeColor: Colors.black,
                  value: 'cash_on_delivery', 
                  groupValue: selectedPaymentMethod, 
                  onChanged: (value){
                    setState(() {
                      selectedPaymentMethod = value!;
                    });
                  }
                ),
                horizontalSpace(6),
                Text(
                  'Cash on delivery',
                  style: CustomTextStyles.font14BlackRegular(context),
                )
              ],
            ),
            if (selectedPaymentMethod == 'cash_on_delivery')
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 16, top: 10),
              child: Column(
                children: [
                  CustomTextFormField(
                    validator: (validator){}, 
                    hintText: 'Address in details',
                    maxLines: 3,
                  ),
                  verticalSpace(8),
                  CustomTextFormField(
                    validator: (validator){}, 
                    hintText: 'Phone number',
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}