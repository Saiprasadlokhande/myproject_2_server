import 'package:myproject_2_server/src/generated/address.dart';
import 'package:serverpod/serverpod.dart';

class AddressEndpoint extends Endpoint {
  Future<bool> addAddress(Session session, Address address) async {
    int i = await findAddress(session, address.areaId);
    if (i == 0) {
      await Address.insert(session, address);
      return true;
    } else {
      return false;
    }
  }

  Future<List<Address>> getAddress(Session session, {String? text}) async {
    return await Address.find(session,
        where: (t) => text != null ? t.fullAddress.like(text) : Constant(true));
  }

  Future<bool> updateAddress(Session session, Address address) async {
    bool result = await Address.update(session, address);
    return result;
  }

  Future<bool> deleteAddress(Session session, int id) async {
    int result = await Address.delete(session, where: (t) => t.id.equals(id));
    return result == 1;
  }

  Future<int> findAddress(Session session, int areaId) async {
    List<Address> addressList =
        await Address.find(session, where: (t) => t.areaId.equals(areaId));
    return addressList.length;
  }
}
