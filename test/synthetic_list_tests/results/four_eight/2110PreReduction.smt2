
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
(assert (= l0 l1) )
(assert (not (= l2 l2)) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (= l1 l3) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil l2)) )
(assert (= l0 l3) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l2 l1)) )
(check-sat)
