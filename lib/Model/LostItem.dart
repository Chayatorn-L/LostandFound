class LostItem {
    final bool gotFound;
    final String image;
    final String itemName;

    const LostItem({
        required this.gotFound,
        required this.image,
        required this.itemName,
    });

    LostItem.formMap(Map<String, dynamic> data)
        : this(
            gotFound: data['gotFound'],
            image: data['image'],
            itemName: data['itemName'],
        );

    getData() {
        Map itemMap = Map();
        itemMap['gotFound'] = gotFound;
        itemMap['image'] = image;
        itemMap['itemName'] = itemName;
        return itemMap;
    }
}