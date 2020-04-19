import React, { Fragment, useState } from 'react';
import NavbarFooter from '../../components/common/navbar_footer';
import Discovery from '../../components/discovery/';
import SectionWrapper from '../../components/common/section_wrapper'

const DiscoveryScreen = () => {
  return (
    <Fragment>
      <SectionWrapper>
        <Discovery />
      </SectionWrapper>
      <NavbarFooter />
    </Fragment>
  );
}
export default DiscoveryScreen;