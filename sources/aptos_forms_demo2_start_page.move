// <autogenerated>
//   This file was generated by dddappp code generator.
//   Any changes made to this file manually will be lost next time the file is regenerated.
// </autogenerated>

module aptos_forms_demo2::aptos_forms_demo2_start_page {
    use aptos_forms_demo2::aptos_forms_demo2_genesis_account as genesis_account;
    use aptos_forms_demo2::aptos_forms_demo2_pass_object as pass_object;
    use aptos_framework::account;
    use aptos_framework::event;
    use aptos_std::table::{Self, Table};
    use std::string::String;
    use xrender_form_utils::date::Date;
    use xrender_form_utils::date_range::DateRange;
    use xrender_form_utils::time::Time;
    use xrender_form_utils::time_range::TimeRange;
    friend aptos_forms_demo2::aptos_forms_demo2_start_page_submit_logic;
    friend aptos_forms_demo2::aptos_forms_demo2_start_page_update_logic;
    friend aptos_forms_demo2::aptos_forms_demo2_start_page_aggregate;

    const EIdAlreadyExists: u64 = 101;
    const EDataTooLong: u64 = 102;
    const EInappropriateVersion: u64 = 103;
    const EInvalidEnumValue: u64 = 106;
    const ENotInitialized: u64 = 110;

    struct Events has key {
        aptos_forms_demo2_start_page_submitted_handle: event::EventHandle<AptosFormsDemo2StartPageSubmitted>,
        aptos_forms_demo2_start_page_updated_handle: event::EventHandle<AptosFormsDemo2StartPageUpdated>,
    }

    struct Tables has key {
        aptos_forms_demo2_start_page_table: Table<address, AptosFormsDemo2StartPage>,
    }

    public fun initialize(account: &signer) {
        genesis_account::assert_genesis_account(account);

        let res_account = genesis_account::resource_account_signer();
        move_to(&res_account, Events {
            aptos_forms_demo2_start_page_submitted_handle: account::new_event_handle<AptosFormsDemo2StartPageSubmitted>(&res_account),
            aptos_forms_demo2_start_page_updated_handle: account::new_event_handle<AptosFormsDemo2StartPageUpdated>(&res_account),
        });

        move_to(
            &res_account,
            Tables {
                aptos_forms_demo2_start_page_table: table::new(),
            },
        );

    }

    struct AptosFormsDemo2StartPage has store {
        signer_address: address,
        version: u64,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    }

    public fun signer_address(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): address {
        aptos_forms_demo2_start_page.signer_address
    }

    public fun version(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): u64 {
        aptos_forms_demo2_start_page.version
    }

    public fun fr_jq19(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_jq19
    }

    public(friend) fun set_fr_jq19(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_jq19: String) {
        assert!(std::string::length(&fr_jq19) <= 255, EDataTooLong);
        aptos_forms_demo2_start_page.fr_jq19 = fr_jq19;
    }

    public fun fr_3c5z(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): u128 {
        aptos_forms_demo2_start_page.fr_3c5z
    }

    public(friend) fun set_fr_3c5z(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_3c5z: u128) {
        aptos_forms_demo2_start_page.fr_3c5z = fr_3c5z;
    }

    public fun fr_d1h2(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_d1h2
    }

    public(friend) fun set_fr_d1h2(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_d1h2: String) {
        assert!(std::string::length(&fr_d1h2) <= 1, EDataTooLong);
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_d1h2::is_valid(fr_d1h2), EInvalidEnumValue);
        aptos_forms_demo2_start_page.fr_d1h2 = fr_d1h2;
    }

    public fun borrow_fr_7gbq(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): &vector<String> {
        &aptos_forms_demo2_start_page.fr_7gbq
    }

    public(friend) fun borrow_mut_fr_7gbq(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage): &mut vector<String> {
        &mut aptos_forms_demo2_start_page.fr_7gbq
    }

    public fun fr_7gbq(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): vector<String> {
        aptos_forms_demo2_start_page.fr_7gbq
    }

    public(friend) fun set_fr_7gbq(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_7gbq: vector<String>) {
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_7gbq::are_all_valid(&fr_7gbq), EInvalidEnumValue);
        aptos_forms_demo2_start_page.fr_7gbq = fr_7gbq;
    }

    public fun fr_h4t4(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_h4t4
    }

    public(friend) fun set_fr_h4t4(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_h4t4: String) {
        assert!(std::string::length(&fr_h4t4) <= 1, EDataTooLong);
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_h4t4::is_valid(fr_h4t4), EInvalidEnumValue);
        aptos_forms_demo2_start_page.fr_h4t4 = fr_h4t4;
    }

    public fun borrow_fr_5jh4(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): &vector<String> {
        &aptos_forms_demo2_start_page.fr_5jh4
    }

    public(friend) fun borrow_mut_fr_5jh4(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage): &mut vector<String> {
        &mut aptos_forms_demo2_start_page.fr_5jh4
    }

    public fun fr_5jh4(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): vector<String> {
        aptos_forms_demo2_start_page.fr_5jh4
    }

    public(friend) fun set_fr_5jh4(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_5jh4: vector<String>) {
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_5jh4::are_all_valid(&fr_5jh4), EInvalidEnumValue);
        aptos_forms_demo2_start_page.fr_5jh4 = fr_5jh4;
    }

    public fun fr_bzpt(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_bzpt
    }

    public(friend) fun set_fr_bzpt(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_bzpt: String) {
        assert!(std::string::length(&fr_bzpt) <= 255, EDataTooLong);
        aptos_forms_demo2_start_page.fr_bzpt = fr_bzpt;
    }

    public fun fr_1kci(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): bool {
        aptos_forms_demo2_start_page.fr_1kci
    }

    public(friend) fun set_fr_1kci(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_1kci: bool) {
        aptos_forms_demo2_start_page.fr_1kci = fr_1kci;
    }

    public fun fr_9i6h(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): bool {
        aptos_forms_demo2_start_page.fr_9i6h
    }

    public(friend) fun set_fr_9i6h(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_9i6h: bool) {
        aptos_forms_demo2_start_page.fr_9i6h = fr_9i6h;
    }

    public fun fr_jyqo(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): u128 {
        aptos_forms_demo2_start_page.fr_jyqo
    }

    public(friend) fun set_fr_jyqo(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_jyqo: u128) {
        aptos_forms_demo2_start_page.fr_jyqo = fr_jyqo;
    }

    public fun fr_3eds(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): u128 {
        aptos_forms_demo2_start_page.fr_3eds
    }

    public(friend) fun set_fr_3eds(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_3eds: u128) {
        aptos_forms_demo2_start_page.fr_3eds = fr_3eds;
    }

    public fun fr_e62y(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): Date {
        aptos_forms_demo2_start_page.fr_e62y
    }

    public(friend) fun set_fr_e62y(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_e62y: Date) {
        aptos_forms_demo2_start_page.fr_e62y = fr_e62y;
    }

    public fun fr_vki(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): DateRange {
        aptos_forms_demo2_start_page.fr_vki
    }

    public(friend) fun set_fr_vki(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_vki: DateRange) {
        aptos_forms_demo2_start_page.fr_vki = fr_vki;
    }

    public fun fr_6znw(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): Time {
        aptos_forms_demo2_start_page.fr_6znw
    }

    public(friend) fun set_fr_6znw(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_6znw: Time) {
        aptos_forms_demo2_start_page.fr_6znw = fr_6znw;
    }

    public fun fr_4ncu(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): TimeRange {
        aptos_forms_demo2_start_page.fr_4ncu
    }

    public(friend) fun set_fr_4ncu(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_4ncu: TimeRange) {
        aptos_forms_demo2_start_page.fr_4ncu = fr_4ncu;
    }

    public fun fr_1cbi(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_1cbi
    }

    public(friend) fun set_fr_1cbi(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_1cbi: String) {
        assert!(std::string::length(&fr_1cbi) <= 10, EDataTooLong);
        aptos_forms_demo2_start_page.fr_1cbi = fr_1cbi;
    }

    public fun fr_18bq(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_18bq
    }

    public(friend) fun set_fr_18bq(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_18bq: String) {
        assert!(std::string::length(&fr_18bq) <= 9, EDataTooLong);
        aptos_forms_demo2_start_page.fr_18bq = fr_18bq;
    }

    public fun fr_lb63(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_lb63
    }

    public(friend) fun set_fr_lb63(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_lb63: String) {
        assert!(std::string::length(&fr_lb63) <= 200, EDataTooLong);
        aptos_forms_demo2_start_page.fr_lb63 = fr_lb63;
    }

    public fun fr_iyqp(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_iyqp
    }

    public(friend) fun set_fr_iyqp(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_iyqp: String) {
        assert!(std::string::length(&fr_iyqp) <= 200, EDataTooLong);
        aptos_forms_demo2_start_page.fr_iyqp = fr_iyqp;
    }

    public fun fr_hfdf(aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage): String {
        aptos_forms_demo2_start_page.fr_hfdf
    }

    public(friend) fun set_fr_hfdf(aptos_forms_demo2_start_page: &mut AptosFormsDemo2StartPage, fr_hfdf: String) {
        assert!(std::string::length(&fr_hfdf) <= 50, EDataTooLong);
        aptos_forms_demo2_start_page.fr_hfdf = fr_hfdf;
    }

    fun new_aptos_forms_demo2_start_page(
        signer_address: address,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    ): AptosFormsDemo2StartPage {
        assert!(std::string::length(&fr_jq19) <= 255, EDataTooLong);
        assert!(std::string::length(&fr_d1h2) <= 1, EDataTooLong);
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_d1h2::is_valid(fr_d1h2), EInvalidEnumValue);
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_7gbq::are_all_valid(&fr_7gbq), EInvalidEnumValue);
        assert!(std::string::length(&fr_h4t4) <= 1, EDataTooLong);
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_h4t4::is_valid(fr_h4t4), EInvalidEnumValue);
        assert!(aptos_forms_demo2::aptos_forms_demo2_fr_5jh4::are_all_valid(&fr_5jh4), EInvalidEnumValue);
        assert!(std::string::length(&fr_bzpt) <= 255, EDataTooLong);
        assert!(std::string::length(&fr_1cbi) <= 10, EDataTooLong);
        assert!(std::string::length(&fr_18bq) <= 9, EDataTooLong);
        assert!(std::string::length(&fr_lb63) <= 200, EDataTooLong);
        assert!(std::string::length(&fr_iyqp) <= 200, EDataTooLong);
        assert!(std::string::length(&fr_hfdf) <= 50, EDataTooLong);
        AptosFormsDemo2StartPage {
            signer_address,
            version: 0,
            fr_jq19,
            fr_3c5z,
            fr_d1h2,
            fr_7gbq,
            fr_h4t4,
            fr_5jh4,
            fr_bzpt,
            fr_1kci,
            fr_9i6h,
            fr_jyqo,
            fr_3eds,
            fr_e62y,
            fr_vki,
            fr_6znw,
            fr_4ncu,
            fr_1cbi,
            fr_18bq,
            fr_lb63,
            fr_iyqp,
            fr_hfdf,
        }
    }

    struct AptosFormsDemo2StartPageSubmitted has store, drop {
        signer_address: address,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    }

    public fun aptos_forms_demo2_start_page_submitted_signer_address(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): address {
        aptos_forms_demo2_start_page_submitted.signer_address
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_jq19(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_jq19
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_3c5z(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): u128 {
        aptos_forms_demo2_start_page_submitted.fr_3c5z
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_d1h2(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_d1h2
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_7gbq(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): vector<String> {
        aptos_forms_demo2_start_page_submitted.fr_7gbq
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_h4t4(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_h4t4
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_5jh4(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): vector<String> {
        aptos_forms_demo2_start_page_submitted.fr_5jh4
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_bzpt(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_bzpt
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_1kci(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): bool {
        aptos_forms_demo2_start_page_submitted.fr_1kci
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_9i6h(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): bool {
        aptos_forms_demo2_start_page_submitted.fr_9i6h
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_jyqo(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): u128 {
        aptos_forms_demo2_start_page_submitted.fr_jyqo
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_3eds(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): u128 {
        aptos_forms_demo2_start_page_submitted.fr_3eds
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_e62y(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): Date {
        aptos_forms_demo2_start_page_submitted.fr_e62y
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_vki(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): DateRange {
        aptos_forms_demo2_start_page_submitted.fr_vki
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_6znw(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): Time {
        aptos_forms_demo2_start_page_submitted.fr_6znw
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_4ncu(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): TimeRange {
        aptos_forms_demo2_start_page_submitted.fr_4ncu
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_1cbi(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_1cbi
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_18bq(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_18bq
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_lb63(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_lb63
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_iyqp(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_iyqp
    }

    public fun aptos_forms_demo2_start_page_submitted_fr_hfdf(aptos_forms_demo2_start_page_submitted: &AptosFormsDemo2StartPageSubmitted): String {
        aptos_forms_demo2_start_page_submitted.fr_hfdf
    }

    public(friend) fun new_aptos_forms_demo2_start_page_submitted(
        signer_address: address,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    ): AptosFormsDemo2StartPageSubmitted {
        AptosFormsDemo2StartPageSubmitted {
            signer_address,
            fr_jq19,
            fr_3c5z,
            fr_d1h2,
            fr_7gbq,
            fr_h4t4,
            fr_5jh4,
            fr_bzpt,
            fr_1kci,
            fr_9i6h,
            fr_jyqo,
            fr_3eds,
            fr_e62y,
            fr_vki,
            fr_6znw,
            fr_4ncu,
            fr_1cbi,
            fr_18bq,
            fr_lb63,
            fr_iyqp,
            fr_hfdf,
        }
    }

    struct AptosFormsDemo2StartPageUpdated has store, drop {
        signer_address: address,
        version: u64,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    }

    public fun aptos_forms_demo2_start_page_updated_signer_address(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): address {
        aptos_forms_demo2_start_page_updated.signer_address
    }

    public fun aptos_forms_demo2_start_page_updated_fr_jq19(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_jq19
    }

    public fun aptos_forms_demo2_start_page_updated_fr_3c5z(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): u128 {
        aptos_forms_demo2_start_page_updated.fr_3c5z
    }

    public fun aptos_forms_demo2_start_page_updated_fr_d1h2(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_d1h2
    }

    public fun aptos_forms_demo2_start_page_updated_fr_7gbq(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): vector<String> {
        aptos_forms_demo2_start_page_updated.fr_7gbq
    }

    public fun aptos_forms_demo2_start_page_updated_fr_h4t4(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_h4t4
    }

    public fun aptos_forms_demo2_start_page_updated_fr_5jh4(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): vector<String> {
        aptos_forms_demo2_start_page_updated.fr_5jh4
    }

    public fun aptos_forms_demo2_start_page_updated_fr_bzpt(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_bzpt
    }

    public fun aptos_forms_demo2_start_page_updated_fr_1kci(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): bool {
        aptos_forms_demo2_start_page_updated.fr_1kci
    }

    public fun aptos_forms_demo2_start_page_updated_fr_9i6h(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): bool {
        aptos_forms_demo2_start_page_updated.fr_9i6h
    }

    public fun aptos_forms_demo2_start_page_updated_fr_jyqo(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): u128 {
        aptos_forms_demo2_start_page_updated.fr_jyqo
    }

    public fun aptos_forms_demo2_start_page_updated_fr_3eds(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): u128 {
        aptos_forms_demo2_start_page_updated.fr_3eds
    }

    public fun aptos_forms_demo2_start_page_updated_fr_e62y(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): Date {
        aptos_forms_demo2_start_page_updated.fr_e62y
    }

    public fun aptos_forms_demo2_start_page_updated_fr_vki(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): DateRange {
        aptos_forms_demo2_start_page_updated.fr_vki
    }

    public fun aptos_forms_demo2_start_page_updated_fr_6znw(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): Time {
        aptos_forms_demo2_start_page_updated.fr_6znw
    }

    public fun aptos_forms_demo2_start_page_updated_fr_4ncu(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): TimeRange {
        aptos_forms_demo2_start_page_updated.fr_4ncu
    }

    public fun aptos_forms_demo2_start_page_updated_fr_1cbi(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_1cbi
    }

    public fun aptos_forms_demo2_start_page_updated_fr_18bq(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_18bq
    }

    public fun aptos_forms_demo2_start_page_updated_fr_lb63(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_lb63
    }

    public fun aptos_forms_demo2_start_page_updated_fr_iyqp(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_iyqp
    }

    public fun aptos_forms_demo2_start_page_updated_fr_hfdf(aptos_forms_demo2_start_page_updated: &AptosFormsDemo2StartPageUpdated): String {
        aptos_forms_demo2_start_page_updated.fr_hfdf
    }

    public(friend) fun new_aptos_forms_demo2_start_page_updated(
        aptos_forms_demo2_start_page: &AptosFormsDemo2StartPage,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    ): AptosFormsDemo2StartPageUpdated {
        AptosFormsDemo2StartPageUpdated {
            signer_address: signer_address(aptos_forms_demo2_start_page),
            version: version(aptos_forms_demo2_start_page),
            fr_jq19,
            fr_3c5z,
            fr_d1h2,
            fr_7gbq,
            fr_h4t4,
            fr_5jh4,
            fr_bzpt,
            fr_1kci,
            fr_9i6h,
            fr_jyqo,
            fr_3eds,
            fr_e62y,
            fr_vki,
            fr_6znw,
            fr_4ncu,
            fr_1cbi,
            fr_18bq,
            fr_lb63,
            fr_iyqp,
            fr_hfdf,
        }
    }


    public(friend) fun create_aptos_forms_demo2_start_page(
        signer_address: address,
        fr_jq19: String,
        fr_3c5z: u128,
        fr_d1h2: String,
        fr_7gbq: vector<String>,
        fr_h4t4: String,
        fr_5jh4: vector<String>,
        fr_bzpt: String,
        fr_1kci: bool,
        fr_9i6h: bool,
        fr_jyqo: u128,
        fr_3eds: u128,
        fr_e62y: Date,
        fr_vki: DateRange,
        fr_6znw: Time,
        fr_4ncu: TimeRange,
        fr_1cbi: String,
        fr_18bq: String,
        fr_lb63: String,
        fr_iyqp: String,
        fr_hfdf: String,
    ): AptosFormsDemo2StartPage acquires Tables {
        asset_aptos_forms_demo2_start_page_not_exists(signer_address);
        let aptos_forms_demo2_start_page = new_aptos_forms_demo2_start_page(
            signer_address,
            fr_jq19,
            fr_3c5z,
            fr_d1h2,
            fr_7gbq,
            fr_h4t4,
            fr_5jh4,
            fr_bzpt,
            fr_1kci,
            fr_9i6h,
            fr_jyqo,
            fr_3eds,
            fr_e62y,
            fr_vki,
            fr_6znw,
            fr_4ncu,
            fr_1cbi,
            fr_18bq,
            fr_lb63,
            fr_iyqp,
            fr_hfdf,
        );
        aptos_forms_demo2_start_page
    }

    public(friend) fun asset_aptos_forms_demo2_start_page_not_exists(
        signer_address: address,
    ) acquires Tables {
        assert!(exists<Tables>(genesis_account::resource_account_address()), ENotInitialized);
        let tables = borrow_global_mut<Tables>(genesis_account::resource_account_address());
        assert!(!table::contains(&tables.aptos_forms_demo2_start_page_table, signer_address), EIdAlreadyExists);
    }

    public(friend) fun update_version_and_add(aptos_forms_demo2_start_page: AptosFormsDemo2StartPage) acquires Tables {
        aptos_forms_demo2_start_page.version = aptos_forms_demo2_start_page.version + 1;
        //assert!(aptos_forms_demo2_start_page.version != 0, EInappropriateVersion);
        private_add_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page);
    }

    public(friend) fun add_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page: AptosFormsDemo2StartPage) acquires Tables {
        assert!(aptos_forms_demo2_start_page.version == 0, EInappropriateVersion);
        private_add_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page);
    }

    public(friend) fun remove_aptos_forms_demo2_start_page(signer_address: address): AptosFormsDemo2StartPage acquires Tables {
        assert!(exists<Tables>(genesis_account::resource_account_address()), ENotInitialized);
        let tables = borrow_global_mut<Tables>(genesis_account::resource_account_address());
        table::remove(&mut tables.aptos_forms_demo2_start_page_table, signer_address)
    }

    fun private_add_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page: AptosFormsDemo2StartPage) acquires Tables {
        assert!(exists<Tables>(genesis_account::resource_account_address()), ENotInitialized);
        let tables = borrow_global_mut<Tables>(genesis_account::resource_account_address());
        table::add(&mut tables.aptos_forms_demo2_start_page_table, aptos_forms_demo2_start_page.signer_address, aptos_forms_demo2_start_page);
    }

    public fun get_aptos_forms_demo2_start_page(signer_address: address): pass_object::PassObject<AptosFormsDemo2StartPage> acquires Tables {
        let aptos_forms_demo2_start_page = remove_aptos_forms_demo2_start_page(signer_address);
        pass_object::new(aptos_forms_demo2_start_page)
    }

    public fun return_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page_pass_obj: pass_object::PassObject<AptosFormsDemo2StartPage>) acquires Tables {
        let aptos_forms_demo2_start_page = pass_object::extract(aptos_forms_demo2_start_page_pass_obj);
        private_add_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page);
    }

    public(friend) fun drop_aptos_forms_demo2_start_page(aptos_forms_demo2_start_page: AptosFormsDemo2StartPage) {
        let AptosFormsDemo2StartPage {
            version: _version,
            signer_address: _signer_address,
            fr_jq19: _fr_jq19,
            fr_3c5z: _fr_3c5z,
            fr_d1h2: _fr_d1h2,
            fr_7gbq: _fr_7gbq,
            fr_h4t4: _fr_h4t4,
            fr_5jh4: _fr_5jh4,
            fr_bzpt: _fr_bzpt,
            fr_1kci: _fr_1kci,
            fr_9i6h: _fr_9i6h,
            fr_jyqo: _fr_jyqo,
            fr_3eds: _fr_3eds,
            fr_e62y: _fr_e62y,
            fr_vki: _fr_vki,
            fr_6znw: _fr_6znw,
            fr_4ncu: _fr_4ncu,
            fr_1cbi: _fr_1cbi,
            fr_18bq: _fr_18bq,
            fr_lb63: _fr_lb63,
            fr_iyqp: _fr_iyqp,
            fr_hfdf: _fr_hfdf,
        } = aptos_forms_demo2_start_page;
    }

    public fun contains_aptos_forms_demo2_start_page(signer_address: address): bool acquires Tables {
        let tables = borrow_global<Tables>(genesis_account::resource_account_address());
        table::contains(&tables.aptos_forms_demo2_start_page_table, signer_address)
    }

    public(friend) fun emit_aptos_forms_demo2_start_page_submitted(aptos_forms_demo2_start_page_submitted: AptosFormsDemo2StartPageSubmitted) acquires Events {
        assert!(exists<Events>(genesis_account::resource_account_address()), ENotInitialized);
        let events = borrow_global_mut<Events>(genesis_account::resource_account_address());
        event::emit_event(&mut events.aptos_forms_demo2_start_page_submitted_handle, aptos_forms_demo2_start_page_submitted);
    }

    public(friend) fun emit_aptos_forms_demo2_start_page_updated(aptos_forms_demo2_start_page_updated: AptosFormsDemo2StartPageUpdated) acquires Events {
        assert!(exists<Events>(genesis_account::resource_account_address()), ENotInitialized);
        let events = borrow_global_mut<Events>(genesis_account::resource_account_address());
        event::emit_event(&mut events.aptos_forms_demo2_start_page_updated_handle, aptos_forms_demo2_start_page_updated);
    }

}
