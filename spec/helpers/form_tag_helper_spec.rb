require "spec_helper"

describe BootstrapRailsHelpers::Helpers::FormTagHelper do
  describe "bs_button_tag" do
    it { should render_bs_button_tag("foo", :submit) }
    it { should render_bs_button_tag("bar", :reset) }

    context "with style" do
      it { should render_bs_button_tag("foo", :submit).with_style(:default) }
      it { should render_bs_button_tag("foo", :submit).with_style(:primary) }
      it { should render_bs_button_tag("foo", :submit).with_style(:info) }
      it { should render_bs_button_tag("foo", :submit).with_style(:success) }
      it { should render_bs_button_tag("foo", :submit).with_style(:warning) }
      it { should render_bs_button_tag("foo", :submit).with_style(:danger) }
      it { should render_bs_button_tag("foo", :submit).with_style(:inverse) }
      it { should render_bs_button_tag("foo", :submit).with_style(:link) }
    end
    
    context "with size" do
      it { should render_bs_button_tag("foo", :submit).with_size(:default) }
      it { should render_bs_button_tag("foo", :submit).with_size(:large) }
      it { should render_bs_button_tag("foo", :submit).with_size(:small) }
      it { should render_bs_button_tag("foo", :submit).with_size(:mini) }
    end
    
    context "with icon" do
      it { should render_bs_button_tag("foo", :submit).with_icon(:ok) }
      it { should render_bs_button_tag("foo", :submit).with_icon(:edit) }
      it { should render_bs_button_tag("foo", :submit).with_icon(:none) }
    end

    context "with inverted icon" do
      it { should render_bs_button_tag("foo", :submit).with_icon(:ok).with_icon_inverted(true) }
      it { should render_bs_button_tag("foo", :submit).with_icon(:edit).with_icon_inverted(true) }
    end

    context "with icon position" do
      it { should render_bs_button_tag("foo", :submit).with_icon_position(:default) }
      it { should render_bs_button_tag("foo", :submit).with_icon_position(:left) }
      it { should render_bs_button_tag("foo", :submit).with_icon_position(:right) }
    end
  end
end