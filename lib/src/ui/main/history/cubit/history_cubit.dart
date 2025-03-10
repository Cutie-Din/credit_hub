import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:credit_hub_new/src/shared/app_export.dart';

import 'history_state.dart';

final logger = getLogger("HistoryCubit");

class HistoryCubit extends Cubit<HistoryState> {
  final MainRepository repo;
  final AppManager appManager;

  HistoryCubit(this.repo, this.appManager) : super(const HistoryState());

  Future<void> postHistory(
      {bool isLoadMore = false, required int page_no, required int page_size}) async {
    try {
      if (state.shouldShowLoading) return;

      final nextPage = isLoadMore ? state.curPage + 1 : 1;

      emit(state.copyWith(
        status: HistoryStatus.loading,
        shouldShowLoading: true,
        curPage: nextPage,
      ));

      HistoryModel postHistory = HistoryModel(
        page_no: nextPage,
        page_size: 10,
      );

      final response = await repo.postHistory(param: postHistory);
      final historyModel = HistoryModel.fromJson(response.data as Map<String, dynamic>);

      List<RequestHistory> newData = List.from(state.data); // Sao chép danh sách cũ
      newData.addAll(historyModel.data); // Thêm danh sách mới vào cuối danh sách cũ

      // newData = [...state.data, ...historyModel.data];

      final canLoadMore = historyModel.data.length >= 10;

      emit(state.copyWith(
        status: HistoryStatus.success,
        data: newData,
        canLoadMore: canLoadMore,
        shouldShowLoading: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HistoryStatus.failure,
        message: e.toString(),
        shouldShowLoading: false,
      ));
    }
  }

  Future<void> getHistoryDetail({required int id}) async {
    try {
      emit(state.copyWith(status: HistoryStatus.loading));

      final response = await repo.getHistoryDetail(id: id);
      final historyDetail = RequestHistory.fromJson(response.data as Map<String, dynamic>);

      emit(state.copyWith(status: HistoryStatus.success, data_received: historyDetail));
    } catch (e) {
      emit(state.copyWith(status: HistoryStatus.failure, message: e.toString()));
    }
  }

  Future<void> resendHistory({required int id}) async {
    try {
      emit(state.copyWith(status: HistoryStatus.loading));
      RequestHistory requestHistory = RequestHistory(id: id);
      final response = await repo.resendHistory(param: requestHistory);
    } catch (e) {
      emit(state.copyWith(status: HistoryStatus.failure, message: e.toString()));
    }
  }

  Future<void> searchHistory({required String lot_no}) async {
    try {
      emit(state.copyWith(status: HistoryStatus.loading));

      HistoryModel postHistory = HistoryModel(lot_no: lot_no);
      final response = await repo.postHistory(param: postHistory);

      final historyModel = HistoryModel.fromJson(response.data as Map<String, dynamic>);

      emit(state.copyWith(
        status: HistoryStatus.success,
        data: List.from(historyModel.data),
      ));
    } catch (e) {
      emit(state.copyWith(status: HistoryStatus.failure, message: e.toString()));
    }
  }
}
