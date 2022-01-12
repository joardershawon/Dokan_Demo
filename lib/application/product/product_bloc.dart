import 'package:bloc/bloc.dart';
import '../../domain/product/i_product_repository.dart';
import '../../infrastructure/product/product_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepository _iProductRepository;
  ProductFilter productFilter = ProductFilter.old;
  List<Product> x = [];
  ProductBloc(
    this._iProductRepository,
  ) : super(ProductState.initial()) {
    List<Product> y = [];
    on<_Started>(
      (event, emit) async {
        emit(
          state.copyWith(isLoading: true),
        );
        x = await _iProductRepository.getAllProduct();
        y = x;
        emit(
          state.copyWith(
            isLoading: false,
            products: y,
          ),
        );
      },
    );
    on<_FilterPressed>(
      (event, emit) async {
        productFilter = event.productFilter!;
        emit(
          state.copyWith(
            productFilter: event.productFilter,
          ),
        );
      },
    );
    on<_SubmitPressed>(
      (event, emit) {
        emit(
          state.copyWith(
            isLoading: true,
            products: y,
          ),
        );
        y = x;
        if (y.isNotEmpty) {
          if (state.productFilter == ProductFilter.old) {
            y = y.where(
              (element) {
                return element.dateCreatedGmt!.isBefore(DateTime.now());
              },
            ).toList();
            y.sort((a, b) => a.id!.compareTo(b.id!));
            emit(
              state.copyWith(
                products: y,
                isLoading: false,
              ),
            );
          } else if (state.productFilter == ProductFilter.neew) {
            y = y.where((element) => element.dateCreatedGmt!.isAfter(DateTime.now())).toList();
            emit(
              state.copyWith(
                products: y,
                isLoading: false,
              ),
            );
          } else if (state.productFilter == ProductFilter.ascendingPrice) {
            y.sort((a, b) => double.parse(a.price!).compareTo(double.parse(b.price!)));

            emit(
              state.copyWith(
                products: y,
                isLoading: false,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              products: y,
              isLoading: false,
            ),
          );
        }

        //
      },
    );
  }
}
