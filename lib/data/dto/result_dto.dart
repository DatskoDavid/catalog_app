import 'package:catalog_app/data/dto/product_dto.dart';
import 'package:equatable/equatable.dart';

class ResultDto extends Equatable {
  final List<ProductDto> productDtoList;

  const ResultDto({required this.productDtoList});

  factory ResultDto.fromJson(List<dynamic> json) {
    final response = json.map((item) => ProductDto.fromJson(item)).toList();

    return ResultDto(productDtoList: response);
  }

  @override
  List<Object?> get props => [productDtoList];
}
