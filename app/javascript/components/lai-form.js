import Rails from '@rails/ujs';

const generateBranchDropDown = () => {
  const branchDropDown = document.getElementById("lai_request_branch_id");
  if (branchDropDown) {
    const cityDropDown = document.getElementById("lai_request_city_government_agency_id");
    if (cityDropDown) {
      cityDropDown.addEventListener("change", (event) => {
        branchDropDown.innerHTML = "";

        Rails.ajax({
          url: `/city_government_agencies/${event.currentTarget.value}`,
          type: "GET",
          success: function(data) {
            console.log(data);
            const wrapperHtml = document.getElementById("branch_wrapper");
            data.forEach((branch) => {
              const element = `<option value="${branch.id}">${branch.branch_name}</option>`;
              branchDropDown.insertAdjacentHTML("beforeend", element);
            })
            wrapperHtml.classList.remove("hidden");
          }
        });
      })
    }
  }
}

export { generateBranchDropDown };
