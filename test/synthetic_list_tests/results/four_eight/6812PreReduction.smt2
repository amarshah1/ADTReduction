
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
(assert (not (is-Nil Nil)) )
(assert (not (is-Nil l2)) )
(assert (is-Nil l3) )
(assert (or (is-Cons Nil) (= l2 l1)) )
(assert (or (= l2 Nil) (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l2 l3) (is-Cons l3) (= l1 l1)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)