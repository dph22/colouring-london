import React, { Component } from 'react';
import PropTypes from 'prop-types';

import './tooltip.css';
import { InfoIcon } from './icons';

class Tooltip extends Component<any, any> { // TODO: add proper types
    static propTypes = { // TODO: generate propTypes from TS
        text: PropTypes.string
    };

    constructor(props) {
        super(props);
        this.state = {
            active: false
        };
        this.handleClick = this.handleClick.bind(this);
    }

    handleClick(event) {
        event.preventDefault();
        this.setState({
            active: !this.state.active
        });
    }

    render() {
        return (
            <div className="tooltip-wrap">
                <button className={(this.state.active? 'active ': '') + 'tooltip-hint icon-button'}
                    title={this.props.text}
                    onClick={this.handleClick}>
                    Hint
                    <InfoIcon />
                </button>
                {
                    this.state.active?
                        (
                            <div className="tooltip bs-tooltip-bottom">
                                <div className="arrow"></div>
                                <div className="tooltip-inner">{this.props.text}</div>
                            </div>
                        )
                        : null
                }
            </div>
        );
    }
}

export default Tooltip;
