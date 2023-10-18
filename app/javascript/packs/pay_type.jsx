import React from "react";
import ReactDOM from "react-dom";
import PayTypeSelector from '../PayTypeSelector';
import {createRoot} from "react-dom/client";


document.addEventListener('DOMContentLoaded', () => {
    let element = document.getElementById("pay-type-component");
    const root = createRoot(element);
    root.render(<PayTypeSelector />)
});