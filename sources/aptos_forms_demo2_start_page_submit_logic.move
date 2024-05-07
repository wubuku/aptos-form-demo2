module aptos_forms_demo2::aptos_forms_demo2_start_page_submit_logic {
    use aptos_forms_demo2::aptos_forms_demo2_start_page;
    use std::string::String;
    use xrender_form_utils::date::Date;
    use xrender_form_utils::date_range::DateRange;
    use xrender_form_utils::time::Time;
    use xrender_form_utils::time_range::TimeRange;

    friend aptos_forms_demo2::aptos_forms_demo2_start_page_aggregate;

    const EFormNotOpen: u64 = 111;
    const EFormCutOff: u64 = 112;

    public(friend) fun verify(
        account: &signer,
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
    ): aptos_forms_demo2_start_page::AptosFormsDemo2StartPageSubmitted {
        let signer_address = std::signer::address_of(account);
        assert!(aptos_framework::timestamp::now_seconds() >= 1699256214, EFormNotOpen); // Open at: 2023-11-06T07:36:54Z
        assert!(aptos_framework::timestamp::now_seconds() <= 3908475414, EFormCutOff); // Cutoff at: 2093-11-08T07:36:54+08:00
        aptos_forms_demo2_start_page::asset_aptos_forms_demo2_start_page_not_exists(signer_address);
        aptos_forms_demo2_start_page::new_aptos_forms_demo2_start_page_submitted(
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
        )
    }

    public(friend) fun mutate(
        _account: &signer,
        aptos_forms_demo2_start_page_submitted: &aptos_forms_demo2_start_page::AptosFormsDemo2StartPageSubmitted,
    ): aptos_forms_demo2_start_page::AptosFormsDemo2StartPage {
        let signer_address = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_signer_address(aptos_forms_demo2_start_page_submitted);
        let fr_jq19 = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_jq19(aptos_forms_demo2_start_page_submitted);
        let fr_3c5z = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_3c5z(aptos_forms_demo2_start_page_submitted);
        let fr_d1h2 = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_d1h2(aptos_forms_demo2_start_page_submitted);
        let fr_7gbq = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_7gbq(aptos_forms_demo2_start_page_submitted);
        let fr_h4t4 = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_h4t4(aptos_forms_demo2_start_page_submitted);
        let fr_5jh4 = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_5jh4(aptos_forms_demo2_start_page_submitted);
        let fr_bzpt = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_bzpt(aptos_forms_demo2_start_page_submitted);
        let fr_1kci = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_1kci(aptos_forms_demo2_start_page_submitted);
        let fr_9i6h = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_9i6h(aptos_forms_demo2_start_page_submitted);
        let fr_jyqo = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_jyqo(aptos_forms_demo2_start_page_submitted);
        let fr_3eds = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_3eds(aptos_forms_demo2_start_page_submitted);
        let fr_e62y = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_e62y(aptos_forms_demo2_start_page_submitted);
        let fr_vki = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_vki(aptos_forms_demo2_start_page_submitted);
        let fr_6znw = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_6znw(aptos_forms_demo2_start_page_submitted);
        let fr_4ncu = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_4ncu(aptos_forms_demo2_start_page_submitted);
        let fr_1cbi = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_1cbi(aptos_forms_demo2_start_page_submitted);
        let fr_18bq = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_18bq(aptos_forms_demo2_start_page_submitted);
        let fr_lb63 = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_lb63(aptos_forms_demo2_start_page_submitted);
        let fr_iyqp = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_iyqp(aptos_forms_demo2_start_page_submitted);
        let fr_hfdf = aptos_forms_demo2_start_page::aptos_forms_demo2_start_page_submitted_fr_hfdf(aptos_forms_demo2_start_page_submitted);
        aptos_forms_demo2_start_page::create_aptos_forms_demo2_start_page(
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
        )
    }

}
