import 'dart:ui';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:huungry/features/home/widgets/card_item.dart';
import 'package:huungry/features/home/widgets/user_header.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../product/view/product_details_view.dart';
import '../data/repo/productRepo.dart';
import '../models/productModel.dart';
import '../widgets/food_catgory.dart';
import '../widgets/search.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List category = ['All', 'Combo', 'Sliders', 'Classic', 'Hot'];
  int selectedIndex = 0;

  List<ProductModel>? products;

  ProductRepo productRepo = ProductRepo();

  Timer? _searchDebounce;

  Future<void> getProducts () async {
    final res = await productRepo.getProducts();
    setState(() {
      products = res;
    });
  }

  Future<void> searchProducts(String query) async {
    if(query.trim().isEmpty) {
      await getProducts();
      return;
    }
    final res = await productRepo.searchProducts(query);
    setState(() {
      products = res;
    });
  }

  void _onSearchChanged(String query) {
    // debounce to avoid calling API on every keystroke
    _searchDebounce?.cancel();
    _searchDebounce = Timer(const Duration(milliseconds: 500), () {
      searchProducts(query);
    });
  }

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  @override
  void dispose() {
    _searchDebounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Skeletonizer(
        enabled: products == null,
        child: Scaffold(
          body: CustomScrollView(
            clipBehavior: Clip.none,
            slivers: [

              /// header
              SliverAppBar(
                elevation: 0,
                pinned: true,
                floating: false,
                toolbarHeight: 150,
                scrolledUnderElevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                flexibleSpace: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 20, sigmaY: 500),
                    child: Container(
                      color: Color.fromRGBO(255, 255, 255, 0.1),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
                        child: Column(
                          children: [UserHeader(), Gap(20), SearchField(onChanged: _onSearchChanged)],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /// Category
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: FoodCategory(
                    category: category,
                    selectedIndex: selectedIndex,
                  ),
                ),
              ),

              /// GridView
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.73,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    childCount:  products?.length ?? 6,
                        (context, index) {
                      final product = products?[index];
                      if(product == null) {
                        return CupertinoActivityIndicator();
                      }
                      return GestureDetector(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => ProductDetailsView(
                          productImage: product.image,
                        ))),
                        child: CardItem(
                          text: product.name,
                          image: product.image,
                          desc: product.desc,
                          rate: product.rate,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}