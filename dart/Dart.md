# Dart Language


## Comments
    // 주석
 
    /**
    * 주석
    **/
    
    /// 문서주석

<hr/>

## Variable
### 1. var
    // * 값을 초기화 하면 다른 타입으로 저장 불가능.
    var valueInt = 0; // Int
    var valueString = "0"; // String

    // 동적 할당 -> 모든 타입으로 저장 가능.
    var valueDynamic;
### 2. types
    // int num = 1; // Int
    // double num = 1.1; // Double
    // String str = "string" // String
    // bool isTrue = true; // Bool

    
<hr/>

## String
### 1. functions
    // 대문자로 변환
    toUpperCase()
    // 소문자로 변환
    toLowerCase()
    // + 연산으로 문자열 연결 가능
    String str1 = "Hello";
    String str2 = "String";
    str3 = str1 + str2;
    str3 => "HelloString"




<hr/>

## Collection Type
### 1. List
    // 초기화
    List<String> fruits = []; // 빈 값 초기화
    List<String> fruits = ['Apple', 'Banana', 'Kiwi']; // 값 주면서 초기화
    List<String> fruits = List.from(['Apple', 'Banana', 'Kiwi']); // from function 사용

    // 고정 사이즈 할당 => add(), removeAt과 같이 사이즈 변경 function 사용 불가.
    List<String> fruits = List.filled(3, ''); 
    fruits[0] = 'Apple';
    fruits[1] = 'Banana';
    fruits[2] = 'Kiwi';

    // 가변 사이즈 할당
    List<String> fruits = List.empty(growable: true);
    fruits.add('Apple');
    fruits.add('Banana');
    fruits.add('Kiwi');

    // functions

    // join: 각 요소를 합쳐서 하나의 문자열로 만듬 
    List<String> fruits = ['Apple', 'Banana', 'Kiwi'];
    print(fruits.join(', '));

    // indexOf: 요소를 찾고, 해당 요소의 index를 반환한다.
    List<String> fruits = ['Apple', 'Banana', 'Kiwi'];
    print(fruits.indexOf('Banana'));

    // where: 조건에 맞는 요소를 새로운 리스트로 만들어 반환한다.
    List<String> fruits = ['Apple', 'Banana', 'Kiwi'];
    print(fruits.where((fruit) => fruit.toLowerCase().indexOf('a') >= 0));

    // forEach: for 루프와 같은 역할을 한다.
    List<String> fruits = ['Apple', 'Banana', 'Kiwi'];

    fruits.forEach((fruit) {
        print('${fruit}!');
    });

    for (String fruit in fruits) {
        print('${fruit}!!');
    }

    // map: forEach와 같이 루프를 돌지만, 루프안에 함수에서 반환한 값을 가지고 새로운 리스트를 만든다.

    List<String> fruits = ['Apple', 'Banana', 'Kiwi'];
    Iterable<String> newFruits = fruits.map((e) {
        return 'My name is ${e}';
    });
    print(newFruits);
    print(newFruits.toList());

    // fold: 초기 시작값을 시작으로 루프를 돌면서, 이전값과 현재값을 가지고 새로운 결과값을 생성할 때 사용한다.
        int result = numbers.fold(0, (previousValue, element) {
        int sum = previousValue + element;
        return sum * 2;
    });
    print(result);

    // reduce: fold와 다르게 초기 시작값이 없으며, 반드시 요소와 같은 타입을 반환해야한다.
    List<int> numbers = [1, 2, 3, 4, 5];
    int total = numbers.reduce((value, element) => value + element);
    print(total);
    
    // asMap: List 타입을 Map 타입으로 변경하며, 이때 새롭게 생성되는 Map은 List의 index를 키값으로 가지게 됩니다. index 값이 필요할 때 자주 사용됩니다.
    List<int> numbers = [10, 20, 30, 40, 50];
    Iterable indexNumbers = numbers.asMap().entries.map((e) {
        return 'index: ${e.key} / value: ${e.value}';
    });
    print(indexNumbers);
    print(indexNumbers.toList());


    // final List<String> list => list안의 값들 변경 O
    // const List<String> list => list안의 값들 변경 x
### 2. Set
    Set<num> set = {1,2,3};
    // 중복 값 허용 X
### 3. Map
    Map<int, String> mapD = {0:'zero', 1:'one'};
    print(mapD[0]) // print: 0
    print(mapD[100]) // print: null