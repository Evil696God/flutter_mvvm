/**
 * MVVM生成器
 */
class MVVMInstantiationUtils {
//   static <T> T getInstantiation(Object object, int i) {
//    try {
//      Class<?> aClass = object.getClass();
//    Type type = aClass.getGenericSuperclass();
//    ParameterizedType parameterizedType = (ParameterizedType) type;
//    Class<T> tClass = null;
//    if (parameterizedType != null) {
//    tClass = (Class<T>) parameterizedType.getActualTypeArguments()[i];
//    }
//    return tClass.newInstance();
//    } catch (Exception e) {
//    e.printStackTrace();
//    }
//    return null;
//  }

  static T getInstantiation<T>(Object object,int i) {
    var type = object.runtimeType;
    type;
  }
}
