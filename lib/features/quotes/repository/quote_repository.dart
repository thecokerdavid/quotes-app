import 'package:quotes_app/models/quote_model.dart';
import 'package:quotes_app/network/network_helper.dart';
import 'package:quotes_app/network/network_service.dart';

class QuotesRepository {
  final String _baseUrl = 'https://api.quotable.io/random';

  Future<QuoteModel> getQuote() async {
    final response = await NetworkService.sendRequest(
      requestType: RequestType.get,
      url: _baseUrl,
    );

    return NetworkHelper.filterResponse(
      callBack: (json) => QuoteModel.fromJson(json),
      response: response,
      onFailureCallBackWithMessage: (errorType, msg) => throw Exception(
        'An Error has happened. $errorType - $msg',
      ),
    );
  }
}
