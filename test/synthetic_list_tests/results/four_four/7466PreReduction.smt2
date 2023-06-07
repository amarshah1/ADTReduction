
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (is-Nil l0)) )
(assert (and (is-Cons Nil) (= l1 l3) (= l2 l0)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l3 Nil) (= l0 Nil) (= l3 l1)) )
(check-sat)
