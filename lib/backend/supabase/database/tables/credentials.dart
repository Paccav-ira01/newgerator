import '../database.dart';

class CredentialsTable extends SupabaseTable<CredentialsRow> {
  @override
  String get tableName => 'credentials';

  @override
  CredentialsRow createRow(Map<String, dynamic> data) => CredentialsRow(data);
}

class CredentialsRow extends SupabaseDataRow {
  CredentialsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CredentialsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String? get password => getField<String>('password');
  set password(String? value) => setField<String>('password', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
