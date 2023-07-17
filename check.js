looker.plugins.visualizations.add({
    options: {
        // Your visualization options here
    },

    create: function (element, config) {
        // Create the visualization container
        this.container = element.appendChild(document.createElement("div"));
        this.container.style.display = "flex";
        this.container.style.justifyContent = "center";
        this.container.style.alignItems = "center";

        // Add the SVG code for the custom visualization
        const svgCode = '<svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="480" height="480" viewBox="0,0,256,256" style="fill:#000000;width: 150px;"><g fill="none" fill-rule="nonzero" stroke="none" stroke-width="1" stroke-linecap="butt" stroke-linejoin="miter" stroke-miterlimit="10" stroke-dasharray="" stroke-dashoffset="0" font-family="none" font-weight="none" font-size="none" text-anchor="none" style="mix-blend-mode: normal"><g transform="scale(5.33333,5.33333)"><path d="M44,24c0,11.045 -8.955,20 -20,20c-11.045,0 -20,-8.955 -20,-20c0,-11.045 8.955,-20 20,-20c11.045,0 20,8.955 20,20z" fill="#4caf50"></path><path d="M34.602,14.602l-13.602,13.597l-5.602,-5.598l-2.797,2.797l8.399,8.403l16.398,-16.402z" fill="#ffffff"></path></g></g></svg>';

        // Set the innerHTML of the container to the SVG code
        this.container.innerHTML = svgCode;

    },

    updateAsync: function (data, element, config, queryResponse, details, done) {
        // Extract field data from the queryResponse
        const fieldData = queryResponse.fields.dimensions.map(dim => dim.label);

        // Create a div element to hold the field data
        const fieldDataElement = document.createElement("div");
        fieldDataElement.style.display = "flex";
        fieldDataElement.style.flexDirection = "column";
        fieldDataElement.style.alignItems = "center";
        fieldDataElement.style.marginTop = "10px";

        // Loop through each field and create a div for each
        fieldData.forEach(field => {
            const fieldElement = document.createElement("div");
            fieldElement.textContent = field;
            fieldDataElement.appendChild(fieldElement);
        });

        // Append the field data div to the visualization container
        this.container.appendChild(fieldDataElement);


        done();
    }
});
