import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elevate/core/helper/extensions/assetss_widgets.dart';
import 'package:flutter_elevate/core/helper/utilities/app_color.dart';
import 'package:flutter_elevate/core/helper/utilities/app_strings.dart';
import 'package:flutter_svg/svg.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    super.key,
    required this.image,
    required this.title,
    required this.des,
    required this.price,
    required this.oldPrice,
    required this.review,
    this.onTap,
  });
  final String image;
  final String title;
  final String des;
  final double price;
  final num oldPrice;
  final String review;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: AppColors.second),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: CachedNetworkImage(
                      width: double.infinity,
                      fit: BoxFit.contain,
                      imageUrl: image,
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Container(
                        padding: 3.aEdge,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            AppStrings.loveIcon,
                            colorFilter: const ColorFilter.mode(
                                AppColors.main, BlendMode.srcIn),
                            height: 18,
                            width: 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: 10.aEdge,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: AppColors.main, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      des,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: AppColors.main, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          'EGP $price',
                          style: const TextStyle(
                              color: AppColors.main,
                              fontWeight: FontWeight.w600),
                        ),
                        8.wSize,
                        Text(
                          '$oldPrice EGP',
                          style: const TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: AppColors.main,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    15.hSize,
                    Row(
                      children: [
                        Text(
                          'Review  ($review)',
                          style: const TextStyle(
                              color: AppColors.main,
                              fontWeight: FontWeight.w700,
                              fontSize: 12),
                        ),
                        8.wSize,
                        const Icon(Icons.star, color: Colors.amber, size: 15),
                        const Spacer(),
                        GestureDetector(
                          onTap: onTap,
                          child: SvgPicture.asset(
                            AppStrings.plusTocartIcon,
                          ),
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
