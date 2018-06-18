package com.mesosphere.sdk.hivemq.scheduler;

import com.mesosphere.sdk.scheduler.plan.Status;
import com.mesosphere.sdk.testing.*;
import org.apache.mesos.Protos;
import org.junit.Test;

import java.util.ArrayList;
import java.util.Collection;

public class ServiceTest {

    private static final String VALID_HOSTNAME_CONSTRAINT = "[[\"hostname\", \"UNIQUE\"]]";
    private static final String INVALID_HOSTNAME_CONSTRAINT = "[[\\\"hostname\\\", \"UNIQUE\"]]";

    @Test
    public void testSpec() throws Exception {
        new ServiceTestRunner().run();
    }


}
