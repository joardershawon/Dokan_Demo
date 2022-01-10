import 'package:bloc/bloc.dart';
import 'package:dokan_demo/domain/product/i_product_repository.dart';
import 'package:dokan_demo/infrastructure/product/product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository _iProductRepository;
  ProductFilter productFilter = ProductFilter.old;
  ProductBloc(
    this._iProductRepository,
  ) : super(ProductState.initial()) {
    List<Product> x = [];
    List<Product> y = [];
    on<_Started>(
      (event, emit) async {
        emit(
          state.copyWith(isLoading: true),
        );
        x = await _iProductRepository.getAllProduct();
        x.sort((a, b) => a.id!.compareTo(b.id!));
        emit(
          state.copyWith(
            isLoading: false,
            products: x,
          ),
        );
        y = x;
      },
    );
    on<_FilterPressed>(
      (event, emit) async {
        productFilter = event.productFilter!;
        emit(
          state.copyWith(
            productFilter: productFilter,
          ),
        );
      },
    );
    on<_SubmitPressed>(
      (event, emit) {
        y = x;

        if (y.isNotEmpty) {
          if (productFilter == ProductFilter.old) {
            y = x.where(
              (element) {
                return element.dateCreatedGmt!.isBefore(DateTime.now());
              },
            ).toList();
            y.sort((a, b) => a.id!.compareTo(b.id!));
            emit(
              state.copyWith(
                products: y,
              ),
            );
          } else if (productFilter == ProductFilter.neew) {
            y = x.where((element) => element.dateCreatedGmt!.isAfter(DateTime.now())).toList();
            emit(
              state.copyWith(
                products: y,
              ),
            );
          } else if (productFilter == ProductFilter.ascendingPrice) {
            y.sort((a, b) => double.parse(a.price!).compareTo(double.parse(b.price!)));
            emit(
              state.copyWith(
                products: y,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              products: y,
            ),
          );
        }

        //
      },
    );
  }
}
