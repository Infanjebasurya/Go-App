

// class HomeRepositoryImpl implements HomeRepository {
//   final HomeLocalDataSource localDataSource;

//   HomeRepositoryImpl({required this.localDataSource});

//   @override
//   Future<Either<Failure, Message>> getWelcomeMessage() async {
//     try {
//       final localMessage = await localDataSource.getLastMessage();
//       return Right(localMessage);
//     } catch (e) {
//       return const Left(CacheFailure());
//     }
//   }
// }
