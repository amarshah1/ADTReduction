
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
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l3 Nil) (is-Cons l1)) )
(assert (not (= l0 l1)) )
(assert (or (= l0 Nil) (= l2 l1) (= l3 l3)) )
(assert (not (= l3 l1)) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (is-Nil l3) (is-Cons l3) (is-Cons Nil)) )
(check-sat)
