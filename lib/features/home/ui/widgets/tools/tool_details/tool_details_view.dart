import 'package:dentalink/core/di/dependency_injection.dart';
import 'package:dentalink/core/helpers/constants.dart';
import 'package:dentalink/core/widgets/custom_app_button.dart';
import 'package:dentalink/core/widgets/general_custom_app_bar.dart';
import 'package:dentalink/features/cart/ui/widgets/add_to_cart_bloc_listener.dart';
import 'package:dentalink/features/home/data/models/add_to_cart/add_to_cart_request.dart';
import 'package:dentalink/features/home/data/models/tools_data.dart';
import 'package:dentalink/features/home/data/repo/add_to_cart/add_to_cart_repo.dart';
import 'package:dentalink/features/home/logic/add_to_cart_cubit/add_to_cart_cubit.dart';
import 'package:dentalink/features/home/ui/widgets/tools/tool_details/tool_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToolDetailsView extends StatelessWidget {
  final Tool toolsData;
  const ToolDetailsView({super.key, required this.toolsData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddToCartCubit(getIt<AddToCartRepo>()),
      child: AddToCartBlocListener(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: const GeneralCustomAppBar(title: 'Tool details'),
            body: ToolDetailsViewBody(tool: toolsData),
            bottomNavigationBar: Padding(
              padding: Constants.appPadding,
              child: CustomAppButton(
                btnText: 'Add to cart',
                onPressed: () {
                  context.read<AddToCartCubit>().addToCart(
                        AddToCartRequest(
                          toolId: toolsData.id,
                          quantity: 1,
                        ),
                      );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
