abstract class Failure {}

class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class NetworkFailure extends Failure {}

class DataParsingFailure extends Failure {}

class UnknownFailure extends Failure {}
