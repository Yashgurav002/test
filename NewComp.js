import React, { Component } from 'react';
import bell1 from './bell.png';
import bell2 from './bell2.png';

class NewComp extends Component {
    constructor(props) {
      super(props)
    
      this.state = {
         message : "Subscribe to MyShopWebsite",
         sub: "subscribe",
         imageURL: bell1
      };
    }
    styles = {
        color : "purple",
        fontstyle : "italic"
    }
    Buttonchange = ()=>{
        this.setState({
            message: "Hit the bell icon to get Updates",
            sub : "Subscribed",
        })
    };
    imageChange=()=>{
        this.setState({
            message: "Thank you. Do Shopping",
            imageURL : bell2
        })
    };
    render() {
        return (
            <div className='App'>
                <h3 style={this.styles}>{this.state.message}</h3>
                <button onClick={this.Buttonchange}>{this.state.sub}</button>
                <p />
                <img 
                    style={{width:"30px", height:"30px"}}
                    src={this.state.imageURL}
                    alt="Image is not present"
                    onClick={this.imageChange} />
            </div>
        );
    }
}

export default NewComp;