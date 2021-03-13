class AppResponse<T> {
  Status status;
  T data;
  String message;

  AppResponse.loading(this.message) : status = Status.LOADING;

  AppResponse.completed(this.data) : status = Status.COMPLETED;

  AppResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { LOADING, COMPLETED, ERROR }
