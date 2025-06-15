import 'package:booksy/Core/App_Router.dart';
import 'package:booksy/Features/Home/presentation/views/widgets/best_seller_item.dart';
import 'package:booksy/Features/Search/Presentaion/Manager/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          if (state.items.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: ColoredBox(
                  color: Colors.black87,
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.search_off, color: Colors.white60, size: 40),
                        SizedBox(height: 10),
                        Text(
                          'لا توجد نتائج',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'جرّب كلمة مختلفة أو تحقق من الإملاء',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white54, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }

          return Expanded(
            child: ListView.builder(
              itemCount: state.items.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final book = state.items[index];
                return GestureDetector(
                  onTap: () {
                    context.go(AppRouter.bookDetailsView, extra: book);
                  },
                  child: BestSellerItem(
                    item: book,
                  ),
                );
              },
            ),
          );
        } else if (state is SearchFailed) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.red, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
