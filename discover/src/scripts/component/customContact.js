class customContact extends HTMLElement {

  
    connectedCallback() {
        this.render();
    }
 
    render() {
        this.innerHTML = 
        `
        <div class="row">
    
        <div class="col">
          <div class="row">
            <h5 class="h4">Features</h5>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Review</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Community</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Social Media Kit</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Affiliate</a>
          </div>
        </div>
  
        <div class="col">
          <div class="row">
            <h5 class="h4">Account</h5>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none text-dark">Refund</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Security</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Rewards</a>
          </div>
        </div>
  
        <div class="col">
          <div class="row">
            <h5 class="h4">COMPANY</h5>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Carrer</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Help Center</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Media</a>
          </div>
          <div class="row">
            <a h  ref="" class="text-decoration-none  text-dark">Our Social Media</a>
          </div>
        </div>
  
        <div class="col">
          <div class="row">
            <h5 class="h4 ">Contact</h5>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Jakarta Selatan</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">Indonesia</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">0812-345-313</a>
          </div>
          <div class="row">
            <a href="" class="text-decoration-none  text-dark">supports@willo-apps.COMPANY</a>
          </div>
        </div>
      </div>
        `;
    }
}

customElements.define('custom-contact', customContact);
