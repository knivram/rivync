import React from "react";
import {cn} from "@/lib/utils";


const Text = React.forwardRef<
    HTMLParagraphElement,
    React.HTMLAttributes<HTMLParagraphElement>
>(({ className, ...props }, ref) => (
    <p ref={ref} className={cn("text-base", className)} {...props} />
));

Text.displayName = 'Text';


const Title = React.forwardRef<
    HTMLHeadingElement,
    React.HTMLAttributes<HTMLHeadingElement>
>(({ className, ...props }, ref) => (
    <h1 ref={ref} className={cn("text-3xl font-bold", className)} {...props} />
));

Title.displayName = 'Title';

export { Text, Title };