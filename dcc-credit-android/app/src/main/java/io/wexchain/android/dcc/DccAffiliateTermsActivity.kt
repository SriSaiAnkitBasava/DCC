package io.wexchain.android.dcc

import android.support.v7.app.AppCompatActivity
import android.os.Bundle
import io.wexchain.android.dcc.base.BaseCompatActivity
import io.wexchain.dcc.R

class DccAffiliateTermsActivity : BaseCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dcc_affiliate_terms)
        initToolbar()
    }
}
