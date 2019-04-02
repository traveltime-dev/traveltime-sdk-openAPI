import com.google.inject.AbstractModule;

import controllers.*;

public class Module extends AbstractModule {

    @Override
    protected void configure() {
        bind(DefaultApiControllerImpInterface.class).to(DefaultApiControllerImp.class);
    }
}